
#include <riscv_vector.h>
#include <stdio.h>
#include "uart.h"
#include "uart.c"

#define CLOCK_FREQUENCY 50000000 //50MHz
#define UART_BITRATE    115200  
// 简单的空转延时函数，使用 asm volatile 防止被优化掉
static inline void debug_delay_cycles(unsigned cycles) {
  for (unsigned i = 0; i < cycles; ++i) {
    asm volatile("nop");
  }
}

// // 简单 UART 输出工具
// static inline void uart_putc(char c) { write_serial((uint8_t)c); }

// static void print_dec32(int32_t v) {
//     char buf[16]; int i = 0;
//     if (v == 0) { uart_putc('0'); return; }
//     if (v < 0) { uart_putc('-'); v = -v; }
//     while (v && i < (int)sizeof(buf)) { buf[i++] = (char)('0' + (v % 10)); v /= 10; }
//     while (i--) uart_putc(buf[i]);
// }

// static void print_i32_array(const char* name, const int32_t* a, int n) {
//     print_uart(name);
//     print_uart(":\r\n");
//     for (int i = 0; i < n; ++i) {
//         print_dec32(a[i]);
//         if (i + 1 < n) uart_putc(' ');
//     }
//     print_uart("\r\n");
// }
int main() {
    
    // 定义向量长度
    size_t vl = 8;  // 向量长度，根据硬件和RVV版本调整

    // 创建两个向量
    vint32m1_t a, b, result;
    
    // 初始化向量数据
    int32_t data_a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    int32_t data_b[8] = {8, 7, 6, 5, 4, 3, 2, 1};
    
    // 将数据加载到向量中
    a = __riscv_vle32_v_i32m1(data_a, vl);
    b = __riscv_vle32_v_i32m1(data_b, vl);
    
    // 执行加法
    result = __riscv_vadd_vv_i32m1(a, b, vl);
    
    // 输出结果
    int32_t result_data[8];
    // ==============UART 打印结果====================
    __riscv_vse32_v_i32m1(result_data, result, vl);

    // debug_delay_cycles(1000000);
    // init_uart(CLOCK_FREQUENCY, UART_BITRATE);
    // print_uart("Result UART:\r\n");
    // print_i32_array("data_a", data_a, 8);
    // print_i32_array("data_b", data_b, 8);
    // print_i32_array("result", result_data, 8);
    // //=======SPIKE===============
    printf("Result: ");
    for (int i = 0; i < 8; i++) {
        printf("%d ", result_data[i]);
    }
    printf("\n");

    return 0;
}
