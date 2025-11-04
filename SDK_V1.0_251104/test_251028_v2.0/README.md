## 测试用例说明

[TOC]

### print-scanf

#### test.c 使用说明

本示例展示了在目标板串口上进行一行输入读取与回显的最小交互流程：

初始化 UART，读取用户输入，遇到回车/换行结束并打印输入内容与长度。

#### 头文件说明

- uart.h / uart.c
  - init_uart(clock_hz, baudrate): 初始化串口。
  - write_serial(uint8_t c): 发送一个字节。
  - read_serial(uint8_t* c): 轮询读取一个字节。
  - print_uart(const char* s): 发送以 '\0' 结尾的字符串。
  - print_uart_int(uint32_t v): 以十进制发送无符号整数。

#### 关键流程

1) 初始化串口
   - init_uart(CLOCK_FREQUENCY, UART_BITRATE)。
2) 提示输入并读取一行
   - read_line(buf, maxlen)
     - 连续从 read_serial 读取字符写入缓冲区。
     - 处理退格：删除一个字符并回显“\b \b”。
     - 遇到回车(0x0D)或换行(0x0A)结束，回显 CRLF，并以 '\0' 终止。
3) 回显结果
   - 打印输入内容与长度。
4) 停留
   - while(1) 空转，便于调试观察。

#### 函数说明

- static int read_line(char* buf, int maxlen)
  - 参数：buf 为输出缓冲，maxlen 为缓冲区大小。
  - 返回：实际写入的字符数，不含终止符。
  - 行为：支持 Backspace/DEL 编辑；接受 CR 或 LF 作为行结束；自动补 '\0'。
- int main(void)
  - 初始化 UART，提示输入，调用 read_line，回显“内容 + 长度”，然后保持运行。

#### 测试结果：

<img src="C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114352394.png" alt="image-20251028114352394" style="zoom:100%;" />

### timer

#### test.c 使用说明

该示例演示在 SoC 的 APB 定时器上进行计时与性能测量，并通过 UART 打印结果。

当前主流程为“每 10 秒打印一次进度，累计 100 秒后退出”。

用于程序性能测试。

#### 头文件说明
- uart.h / uart.c 串口初始化。
- stdint.h

#### 常量与寄存器
- CLOCK_FREQUENCY=50,000,000，UART_BITRATE=115200
- APB_TIMER_BASE =0x1800_0000
- APB 定时器寄存器与位定义：
  - TMR_REG_TIMER 0x00：计数寄存器
  - TMR_REG_CTRL  0x04：控制寄存器
    - ENABLE 位：bit0
    - PRESCALER：bits[5:3]（0 表示 1:1，每个 HCLK 记一次）
  - TMR_REG_CMP   0x08：比较寄存器（本例未用）

#### 关键流程
1) 串口初始化
   - init_uart(CLOCK_FREQUENCY, UART_BITRATE);
3) 每 10 秒打印一次，总计 100 秒退出
   - timer_reset_start(0);开始计时
   - 轮询 REG_TIMER到达目标周期
   - timer_stop_read() 读出本段周期并打印：
   - 循环 10 次（10×10s），结束后 return 0;

#### 函数说明
- UART/打印
  - uart_putc(char c)：发送单字符
  - print_str(const char* s)：发送字符串
  - print_u32_dec(uint32_t v)` / `print_u64_dec(uint64_t v)：十进制打印
  - print_cycles_us(const char* name, uint32_t cycles)：同时打印周期与换算的微秒
- APB 定时器驱动
  - tmr_write(off, v) / tmr_read(off)：MMIO 读写
  - timer_reset_start(prescaler)：清零 TIMER/CMP，设置分频与 ENABLE=1 开始计数
  - timer_stop_read()：清除 ENABLE 并返回 TIMER 值

#### 测试输出：
![image-20251028114938003](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114938003.png)

### Matmul-AB/ABT

#### test.c 使用说明

本示例基于 RISC-V Matrix 扩展实现 A(16x16) × B(16x16) → C(16x16) 的 int8→int32 矩阵乘法，并通过 UART 打印输入/输出与 golden 结果。

数据从 data.h 加载，A/B/C 放置在链接脚本指定的固定内存段（.matA/.matB/.matC）。

#### 头文件说明
- stdio.h / stdlib.h / stdint.h / stddef.h / string.h: 基础类型与库函数。
- riscv_matrix.h: RISC-V Matrix 扩展接口定义,编译器内置builtin函数。
- matrix/matrix_intrinsic.h: 封装的msettype指令。
- data.h: 输入矩阵与 golden 期望值。
- uart.h / uart.c: 简单串口驱动与打印。

#### 常量与配置

- CLOCK_FREQUENCY=50MHz，UART_BITRATE=115200。[硬件IP需求]
- DIM_M=16、DIM_K=16、DIM_N=16。
- 链接段说明：
  - .matA at 0x80040000, .matB at 0x80050000, .matC at 0x80060000。

#### 关键算法路径
- 数据准备
  - A/B/C 分别映射到链接脚本定义的段：.matA/.matB/.matC（对齐 64 字节）。
  - main 中将 data.h 的 A_i8/B_i8/C_i32 拷贝到上述段，初始化 UART。
  
- Tile GEMM（int8 × int8 → int32）
  - 三层块循环 i/j/kk，按剩余维度动态设置 tile 大小：
    ```c
    tile_m = msettilem(m - i)
    tile_n = msettilen(n - j)
    tile_k = msettilek(k - kk)
    ```
    
  - 按字节步长设置 LDA/LDB/LDC（行主存储）：
    ```C
    lda_bytes = k * sizeof(int8_t)
    ldb_bytes = n * sizeof(int8_t)
    ldc_bytes = n * sizeof(int32_t)
    ```
    
  - 加载/累加/存储：
    
    ```c
    acc = mlc_m(C + i*n + j, ldc_bytes)           // 载入 C 分块作为累加器初值
    trA = mla_m(A + i*k + kk, lda_bytes)          // 加载 A 分块（行主）
    trB = mlbt_m(B + kk*k + j, ldb_bytes)         // 加载 B 分块（在硬件中加载转置才是做AB运算）如果是ABT使用mlb_m(B + j * n + kk, ldb_bytes)
    acc = mqma_b_mm(acc, trA, trB)                // int8×int8→int32 乘加
    msc_m(acc, C + i*n + j, ldc_bytes)            // 回写 C 分块
    ```
  
- 串口输出
  - 打印矩阵 A、B（int8），打印计算后的 C（int32），打印 golden D_i32（int32）。

#### 函数说明
- debug_delay_cycles(unsigned cycles)
  - 简单忙等延时（nop 循环），用于观察串口输出时序。
- matmul_batch1(const int8_t* A, const int8_t* B, int32_t* C, int m, int n, int k)
  - 核心 Tile GEMM 实现：
    - 动态 tile（m/n/k 方向）与字节步长设置；
    - 乘加操作，载入 C 为累加器；
    - 分块存回 C。
- uart_putc(char c) / print_dec32(int32_t v)
  - 基础串口输出与十进制整型打印。
- print_mat_i32(const int32_t* m, int rows, int cols)
  - 以行优先输出 int32 矩阵。
- print_dec8(int8_t v) / print_mat_i8(const int8_t* m, int rows, int cols)
  - int8 值与矩阵打印。
- main()
  - 从 data.h 拷贝 A_i8/B_i8/C_i32 到固定段；
  - 初始化 UART，打印 A/B；
  - 调用 matmul 计算 C，延时后打印 C；
  - 打印 golden D_i32 供人工对比。

#### 使用建议
- 若更改维度或数据布局，请同步调整 data.h 与 LDA/LDB/LDC 的计算方式。
- mqma 路径区分 B 的装载形式（mlbt_m/ mlb_m），适用于AB/ABT。

#### 测试结果：

- spike结果：

  ![image-20251028114859270](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114859270.png)

- 硬件结果：

![AB](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114646901.png)

![ABT](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114702332.png)

### RVV_add

#### test.c 使用说明

本示例演示在 RVV上进行 int32 向量加法：result = a + b。

#### 头文件说明

- <riscv_vector.h>：是编译器内置的头文件，存储RVV相关的builtin函数。
- "uart.h"和"uart.c"为调用外设IP打印的驱动文件。

#### 关键算法路径

- 数据准备

  - 定义两组长度为 8 的 int32 数组 data_a 和 data_b。

- 加载到向量寄存器

  ```c
  a = __riscv_vle32_v_i32m1(data_a, vl)
  b = __riscv_vle32_v_i32m1(data_b, vl)
  ```

- 矢量加法

  ```c
  result = __riscv_vadd_vv_i32m1(a, b, vl)
  ```

- 写回与输出

  ```c
  __riscv_vse32_v_i32m1(result_data, result, vl)
  ```

  - 通过 UART 依次打印 data_a、data_b、result 三个数组。

#### 函数说明

- debug_delay_cycles(unsigned cycles)
  - 简单忙等延时。
- uart_putc(char c)
  - 串口输出单字符。
- print_dec32(int32_t v)
  - 打印十进制 32 位整数。
- print_i32_array(const char* name, const int32_t* a, int n)
  - 逐项打印整型数组。
- main()
  - 准备数据、加载矢量、执行 vadd、存回结果；
  - 延时后初始化 UART并打印输入与输出数组。

#### 预期输出

- Spike结果，存放在Spike.log：

  ![image-20251028110301741](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028110301741.png)

- 硬件结果：

![image-20251028114501431](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114501431.png)



### Softmax

#### test.c 使用说明

该文件实现了基于 RISC-V RVV 的稳定 softmax，并内置了串口打印和Spike打印函数用于debug、对比 golden 的辅助工具。

核心流程分为三步：求全局最大值、分块计算 exp 并累加求和、归一化。

#### 头文件

- <riscv_vector.h>是编译器内置的头文件，存储RVV相关的builtin函数。
- "data.h"是softmax的输入、输出数据，以及对比需要的golden数据。
- "uart.h"和"uart.c"为调用外设IP打印的驱动文件。

#### 关键算法路径

- Pass-1（求 max_x）
  - 循环按块加载 src，使用 vfmax/vfredmax 做全局最大值归约。
  - 归约结果通过 vse 写回内存。
- Pass-2（计算 exp 和块内求和）
  - 对每个块的 x 减 max_x，做范围缩减：$t ≈ k·ln2 + r$。
  - 用 8 阶 Horner 多项式近似计算$e^r $ 得到 p。
  - 用按位构造法生成 $2^k$。
  - $vexp = p * 2^k$，写回 dst；用 vfredosum 对本块 exp 求和并累计到 vsum1。
- Pass-3（归一化）
  - 对 vsum1+eps 求倒数（vfrec7 + 2 次牛顿迭代）。
  - 用 vrgather_vx 把单元素倒数广播到当前块，逐元素相乘完成归一化，写回 dst。

#### 函数说明：

- **debug_delay_cycles(unsigned cycles)**
  - 硬件需要一定时间存入数据，一般cycles可以设置为10M。
- **UART串口打印**
  - uart_putc(char c)：输出单字符。
  - print_dec32(int32_t v)：打印十进制整型。
  - print_float_fixed3(float x)：打印浮点，保留 6 位小数；内置 Inf/NaN 识别与大数科学计数法。
  - print_f32_scalar(const char* name, float v)：name=v 换行。
  - print_idx_prefix(const char* name, int i)：打印 name[i]= 前缀。
  - print_f32_array(const char* name, const float* a, int n)：逐元素 name[i]=value 打印。
  - debug_dump_vec_f32(const char* name, size_t pos, vfloat32m1_t v, size_t vl)
    - 将向量先 vse 到本地缓冲，delay 一定cycle数。
    - 逐项用 print_float_fixed3 打印 name[pos+lane]。
    - 用于打印 vr、p、2^k、exp 等中间结果。
  - compare_and_print(const float* got, const float* ref, int n, float tol)
    - 逐项打印 got/ref/diff，并标注 OK/FAIL
    - 打印 mismatch 数与最大误差。
- **Spike调试输出**
  - dbg_print_line(const char* s)：打印整行字符串。
  - dbg_print_u32(const char* label, uint32_t v)：十进制 u32。
  - dbg_print_hex32(const char* label, uint32_t v)：十六进制 u32。
  - dbg_print_idx_hex32(const char* name, uint32_t idx, const char* suffix, uint32_t v)：带索引的十六进制打印。
- **浮点转换工具：**
  - load_f32_bits(const float* p)：读取 float 的位模式为 u32。
  - v1_to_f32(vfloat32m1_t v)：将单元素 f32m1 写回内存转成标量 float。
- **RVV插入vrgather_vi指令辅助(目前硬件仅支持vrgather_vi)**
  - asm_vrgather_vi_f32m8_mem(vfloat32m8_t src, int imm, size_t vl)
  - asm_vrgather_vi_f32m1_mem(vfloat32m1_t src, int imm, size_t vl)
- **softmax实现**
  - void softmax_stable_rvv_fp32(float* dst, float* src, size_t n)
    - 执行 Pass-1/2/3
    - 重要中间变量可加入打印。
- **主函数**
  - int main()
    - 初始化 UART，调用 softmax_stable_rvv_fp32。
    - 打印并对比 golden：compare_and_print(dst, golden, N, 1e-3f)。

#### 预期结果：

- Spike结果在spike.log中，部分例子如下：

  ![image-20251028110140440](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028110140440.png)

- 硬件结果如图：

- ![softmax结果](C:\Users\18519\AppData\Roaming\Typora\typora-user-images\image-20251028114520953.png)





