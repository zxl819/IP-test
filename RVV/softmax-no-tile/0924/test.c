#define VLEN 512
#include <riscv_vector.h>
#define INFINITY (__builtin_inff())
#include <stdio.h>
#include <string.h>

// 简单的空转延时函数，使用 asm volatile 防止被优化掉
static inline void debug_delay_cycles(unsigned cycles) {
  for (unsigned i = 0; i < cycles; ++i) {
    asm volatile("nop");
  }
}
// 安全版本的打印函数
static inline char dbg_hex_digit(unsigned x){ return (x<10)?('0'+x):('A'+(x-10)); }

static void dbg_print_line(const char* s) {
    // 使用安全的 printf 格式
    printf("%s", s);
}

static void dbg_print_u32(const char* label, uint32_t v) {
    char buf[64];
    int p = 0;
    // 复制 label
    for (; label[p] && p < (int)sizeof(buf)-1; ++p) buf[p] = label[p];
    if (p < (int)sizeof(buf)-1) buf[p++] = ':'; 
    if (p < (int)sizeof(buf)-1) buf[p++] = ' ';
    // 十进制
    char tmp[16]; int t = 0;
    if (v == 0) tmp[t++] = '0';
    else { while (v && t < (int)sizeof(tmp)) { tmp[t++] = '0' + (v % 10); v /= 10; } }
    while (t && p < (int)sizeof(buf)-1) buf[p++] = tmp[--t];
    if (p < (int)sizeof(buf)-1) buf[p++] = '\n';
    buf[p] = 0;
    printf("%s", buf);
}

static void dbg_print_hex32(const char* label, uint32_t v) {
    char buf[64];
    int p = 0;
    for (; label[p] && p < (int)sizeof(buf)-1; ++p) buf[p] = label[p];
    if (p < (int)sizeof(buf)-1) buf[p++] = ':'; 
    if (p < (int)sizeof(buf)-1) buf[p++] = ' ';
    if (p < (int)sizeof(buf)-1) buf[p++] = '0';
    if (p < (int)sizeof(buf)-1) buf[p++] = 'x';
    for (int i = 7; i >= 0 && p < (int)sizeof(buf)-1; --i) {
        buf[p++] = dbg_hex_digit((v >> (i*4)) & 0xF);
    }
    if (p < (int)sizeof(buf)-1) buf[p++] = '\n';
    buf[p] = 0;
    printf("%s", buf);
}

static void dbg_print_idx_hex32(const char* name, uint32_t idx, const char* suffix, uint32_t v) {
    char buf[96];
    int p = 0;
    // name
    for (; name[p] && p < (int)sizeof(buf)-1; ++p) buf[p] = name[p];
    if (p < (int)sizeof(buf)-1) buf[p++] = '[';
    // idx
    char tmp[16]; int t = 0; uint32_t x = idx;
    if (x == 0) tmp[t++] = '0';
    else { while (x && t < (int)sizeof(tmp)) { tmp[t++] = '0' + (x % 10); x /= 10; } }
    while (t && p < (int)sizeof(buf)-1) buf[p++] = tmp[--t];
    if (p < (int)sizeof(buf)-1) buf[p++] = ']';
    if (suffix) {
        if (p < (int)sizeof(buf)-1) buf[p++] = ' ';
        for (int i = 0; suffix[i] && p < (int)sizeof(buf)-1; ++i) buf[p++] = suffix[i];
    }
    if (p < (int)sizeof(buf)-1) buf[p++] = ':';
    if (p < (int)sizeof(buf)-1) buf[p++] = ' ';
    if (p < (int)sizeof(buf)-1) buf[p++] = '0';
    if (p < (int)sizeof(buf)-1) buf[p++] = 'x';
    for (int i = 7; i >= 0 && p < (int)sizeof(buf)-1; --i) {
        buf[p++] = dbg_hex_digit((v >> (i*4)) & 0xF);
    }
    if (p < (int)sizeof(buf)-1) buf[p++] = '\n';
    buf[p] = 0;
    printf("%s", buf);
}

static inline uint32_t load_f32_bits(const float* p) {
    uint32_t u; memcpy(&u, p, 4); return u;
}

void softmax_stable_rvv_fp32(float* dst, float* src, size_t n);
float quick_dirty_vector_expf(float* dst, float* src, float max_x, size_t n);
uint32_t quick_dirty_vector_expf_no_scalar(float* dst, float* src, uint32_t max_x_bits, size_t n);

float src[VLEN/32]={-0.50183952f,1.80285728f,0.92797577f,0.39463395f,-1.37592542f,-1.37602186f,-1.76766551f,1.46470463f,0.40446004f,0.83229029f,-1.91766202f,1.87963939f,1.32977057f,-1.15064359f,-1.27270019f,-1.26638198f};//,-0.78303105f,0.09902573f,-0.27221993f,-0.83508343f,0.44741157f,-1.44202459f,-0.83142143f,-0.53455263f,-0.17572007f,1.14070380f,-1.20130491f,0.05693775f,0.36965826f,-1.81419837f,0.43017942f,-1.31790352f};
float dst[VLEN/32]={0};

float golden[VLEN/32]={0.01962993f,0.19671424f,0.08201241f,0.04811186f,0.00819046f,0.00818966f,0.00553576f,0.14027424f,0.04858694f,0.07452876f,0.00476469f,0.21241336f,0.12256793f,0.01025998f,0.00908109f,0.00913865f};//,0.01011935f,0.02444698f,0.01686534f,0.00960609f,0.03463596f,0.00523547f,0.00964133f,0.01297375f,0.01857396f,0.06928197f,0.00666038f,0.02343940f,0.03204493f,0.00360847f,0.03404422f,0.00592735f};
float diff_mem[VLEN/32]={0};

int main(){
    softmax_stable_rvv_fp32(dst,src,VLEN/32);
    return 0;
}

// 完全避免标量浮点寄存器的版本
void softmax_stable_rvv_fp32(float* dst, float* src, size_t n)
{
    const size_t vlmax = __riscv_vsetvlmax_e32m1(); 
    
    // // 使用内存数组存储所有常量，通过整数指针访问
    static const uint32_t constants[] = {
        0xFF800000,  // -INFINITY [0]
        0x3F317218,  // ln(2)     [1]
        0x3FB8AA3B,  // 1/ln(2)   [2]  
        0x3E800000,  // 0.25f     [3]
        0x40000000,  // 2.0f      [4]
        0x3F800000,  // 1.0f      [5]
        0x3EFFFFFC,  // poly_c_2  [6]
        0x3D2AA427,  // poly_c_3  [7]
        0x3AAAB664,  // poly_c_4  [8]
        0x38891F99,  // poly_c_5  [9]
        0x3684250E,  // poly_c_6  [10]
        0x322BCC77   // 1e-8f     [11]
    };
    
    
    // 常量（按位）
    const uint32_t BITS_NEG_INF = 0xFF800000u;
    const uint32_t BITS_ILN2    = 0x3FB8AA3Bu; // 1/ln(2)
    const uint32_t BITS_LN2_HI  = 0x3F317000u; // ln2 hi
    const uint32_t BITS_LN2_LO  = 0x38800C00u; // ln2 lo
    const uint32_t BITS_EPS     = 0x322BCC77u; // 1e-8
    const uint32_t BITS_TWO     = 0x40000000u; // 2.0

    // e^r 的 8 阶多项式系数（Horner）
    const uint32_t C0 = 0x3F800000u; // 1
    const uint32_t C1 = 0x3F800000u; // 1
    const uint32_t C2 = 0x3F000000u; // 1/2
    const uint32_t C3 = 0x3E2AAAABu; // 1/6
    const uint32_t C4 = 0x3D2AAAABu; // 1/24
    const uint32_t C5 = 0x3C088889u; // 1/120
    const uint32_t C6 = 0x3AB60B61u; // 1/720
    const uint32_t C7 = 0x3A1175D4u; // 1/5040
    const uint32_t C8 = 0x3926ED8Eu; // 1/40320

    // 预构建常量向量（用 vlmax，后续算子用当前 vl，只会影响前 vl 个元素）
    vfloat32m1_t vzero   = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(0u,        vlmax));
    vfloat32m1_t vnegInf = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_NEG_INF, vlmax));
    vfloat32m1_t viln2   = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_ILN2,   vlmax));
    vfloat32m1_t vln2_hi = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_LN2_HI, vlmax));
    vfloat32m1_t vln2_lo = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_LN2_LO, vlmax));
    vfloat32m1_t pc0 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C0, vlmax));
    vfloat32m1_t pc1 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C1, vlmax));
    vfloat32m1_t pc2 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C2, vlmax));
    vfloat32m1_t pc3 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C3, vlmax));
    vfloat32m1_t pc4 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C4, vlmax));
    vfloat32m1_t pc5 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C5, vlmax));
    vfloat32m1_t pc6 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C6, vlmax));
    vfloat32m1_t pc7 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C7, vlmax));
    vfloat32m1_t pc8 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(C8, vlmax));
    vfloat32m1_t vtwo1 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_TWO,    vlmax));
    vfloat32m1_t veps1 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(BITS_EPS,    vlmax));
    // dbg_print_u32("vlmax", (uint32_t)vlmax);
    
    vuint32m1_t vneg_inf_int = __riscv_vmv_v_x_u32m1(constants[0], vlmax);
    vfloat32m1_t vmax = __riscv_vreinterpret_v_u32m1_f32m1(vneg_inf_int);
    
    // 打印输入数据
    // dbg_print_line("Input data:\n");
    // for (size_t i = 0; i < n; i++) {
    //     dbg_print_idx_hex32("src", (uint32_t)i, "bits", load_f32_bits(&src[i]));
    // }

    // Pass-1: 求全局最大值 max_x
    float* src_orig = src; // 保存原始指针
    size_t avl = n;
    while (avl > 0) {
        size_t vl = __riscv_vsetvl_e32m1(avl);
        vfloat32m1_t vx = __riscv_vle32_v_f32m1(src, vl);
        vmax = __riscv_vfmax_vv_f32m1(vmax, vx, vl);
        avl -= vl;
        src += vl;
    }
    src = src_orig; // 重置源指针
    // reduce -> 单元素向量，元素0为 max_x
    vfloat32m1_t vmax1 = __riscv_vfredmax_vs_f32m1_f32m1(vmax, vnegInf, vlmax);


    // final maximum reduction
    vfloat32m1_t vredmax = __riscv_vreinterpret_v_u32m1_f32m1(vneg_inf_int);
    vredmax = __riscv_vfredmax_vs_f32m1_f32m1(vmax, vredmax, vlmax);
    
    // 通过内存获取 max_x，避免标量浮点寄存器
    uint32_t max_x_bits[1];
    vuint32m1_t vredmax_int = __riscv_vreinterpret_v_f32m1_u32m1(vredmax);
    __riscv_vse32_v_u32m1(max_x_bits, vredmax_int, 1);
    
    union { uint32_t u; float f; } max_x_union = {.u = max_x_bits[0]};
    uint32_t max_x_as_int = max_x_union.u;
    // dbg_print_hex32("max_x bits", max_x_as_int);

    // Computing element-wise exponentials and their sum.
    //uint32_t sum_bits = quick_dirty_vector_expf_no_scalar(dst, src, max_x_as_int, n);

    // Pass-2: 计算 exp(x - max_x)，写入 dst，并累加求和（和保存在单元素向量 vsum1 中）
    vfloat32m1_t vsum1 = vzero;
    float* dst_orig = dst;
    size_t avl2 = n;
    while (avl2 > 0) {
        size_t vl = __riscv_vsetvl_e32m1(avl2);
        vfloat32m1_t vx = __riscv_vle32_v_f32m1(src, vl);

        // 广播 max_x 到本块长度（不经标量浮点）
        vfloat32m1_t vmax_x = __riscv_vrgather_vx_f32m1(vmax1, 0, vl);
        vx = __riscv_vfsub_vv_f32m1(vx, vmax_x, vl); // x - max_x
        // k = round((x-max)/ln2)
        unsigned old_frm;
        asm volatile("csrr %0, frm" : "=r"(old_frm));
        asm volatile("csrw frm, %0" :: "r"(0)); // RNE
        vfloat32m1_t vxiln2 = __riscv_vfmul_vv_f32m1(vx, viln2, vl);
        vint32m1_t   vk     = __riscv_vfcvt_x_f_v_i32m1(vxiln2, vl);
        asm volatile("csrw frm, %0" :: "r"(old_frm));

        // r = (x-max) - k*ln2_hi - k*ln2_lo
        vfloat32m1_t vfk    = __riscv_vfcvt_f_x_v_f32m1(vk, vl);
        vfloat32m1_t vkl2hi = __riscv_vfmul_vv_f32m1(vfk, vln2_hi, vl);
        vfloat32m1_t vkl2lo = __riscv_vfmul_vv_f32m1(vfk, vln2_lo, vl);
        vfloat32m1_t vr     = __riscv_vfsub_vv_f32m1(vx, vkl2hi, vl);
        vr = __riscv_vfsub_vv_f32m1(vr, vkl2lo, vl);

        // p = poly_e(vr)（8 阶 Horner）
        vfloat32m1_t p = pc8;
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc7, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc6, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc5, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc4, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc3, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc2, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc1, vl);
        p = __riscv_vfmadd_vv_f32m1(p, vr, pc0, vl);

        // 2^k 重建：((k+127)<<23)
        const int exp_bias = 127;
        vint32m1_t vbiased = __riscv_vadd_vx_i32m1(vk, exp_bias, vl);
        vint32m1_t vexp2   = __riscv_vsll_vx_i32m1(vbiased, 23, vl);
        vfloat32m1_t vf2k  = __riscv_vreinterpret_v_i32m1_f32m1(vexp2);

        // exp = p * 2^k
        vfloat32m1_t vexp  = __riscv_vfmul_vv_f32m1(p, vf2k, vl);
        // 写出 exp，并累加块和 -> 总和保存在单元素向量 vsum1
        __riscv_vse32_v_f32m1(dst, vexp, vl);
        vfloat32m1_t vblk  = __riscv_vfredosum_vs_f32m1_f32m1(vexp, vzero, vl);
        vsum1 = __riscv_vfadd_vv_f32m1(vsum1, vblk, __riscv_vsetvl_e32m1(1));

        avl2 -= vl;
        src  += vl;
        dst  += vl;
    }
    // 计算 inv(sum)（单元素向量），避免标量浮点
    size_t vl1 = __riscv_vsetvl_e32m1(1);
    vfloat32m1_t vsum1_eps = __riscv_vfadd_vv_f32m1(vsum1, veps1, vl1);
    vfloat32m1_t vinv1 = __riscv_vfrec7_v_f32m1(vsum1_eps, vl1);
    // NR refine ×2：vinv = vinv * (2 - d*vinv)
    vfloat32m1_t corr = __riscv_vfnmsac_vv_f32m1(vtwo1, vsum1_eps, vinv1, vl1); // 2 - d*x
    vinv1 = __riscv_vfmul_vv_f32m1(vinv1, corr, vl1);
    corr  = __riscv_vfnmsac_vv_f32m1(vtwo1, vsum1_eps, vinv1, vl1);
    vinv1 = __riscv_vfmul_vv_f32m1(vinv1, corr, vl1);

    // Pass-3: 归一化（用 vrgather_vx 将单元素 vinv1 广播到当前 vl）
    dst = dst_orig;
    size_t avl3 = n;
    while (avl3 > 0) {
        size_t vl = __riscv_vsetvl_e32m1(avl3);
        vfloat32m1_t row   = __riscv_vle32_v_f32m1(dst, vl);
        vfloat32m1_t vinvB = __riscv_vrgather_vx_f32m1(vinv1, 0, vl); // 广播 inv(sum)
        row = __riscv_vfmul_vv_f32m1(row, vinvB, vl);
        __riscv_vse32_v_f32m1(dst, row, vl);
        avl3 -= vl;
        dst  += vl;
    }
    dst = dst_orig;
    debug_delay_cycles(1000);
    size_t avl4 = n;
    while (avl4 > 0) {
        size_t vl = __riscv_vsetvl_e32m1(avl4);
        vfloat32m1_t row2 = __riscv_vle32_v_f32m1(dst, vl);
        __riscv_vse32_v_f32m1(dst, row2, vl);
        avl4 -= vl;
        dst  += vl;
    }
    dst = dst_orig;


    // // 可选：调试打印（保持你的现有代码）
    // dbg_print_line("Final results:\n");
    // for (size_t i = 0; i < n; i++) {
    //     dbg_print_idx_hex32("dst", (uint32_t)i, "bits", load_f32_bits(&dst_orig[i]));
    //     dbg_print_idx_hex32("golden", (uint32_t)i, "bits", load_f32_bits(&golden[i]));
    // }
    // dbg_print_hex32("Returning sum bits", sum_bits);

    // // 用 vfrec7 + 2 次 NR 直接做除法近似，避免标量寄存器
    // avl = n;
    // //float* dst_orig = dst; // exp 结果起始地址
    // dst = dst_orig;
    // while (avl > 0) {
    //     size_t vl = __riscv_vsetvl_e32m1(avl);

    //     // 读本块 exp 结果
    //     vfloat32m1_t row = __riscv_vle32_v_f32m1(dst, vl);

    //     // sum 向量广播并加上一个极小量防止除零
    //     vuint32m1_t vsum_bits_vl = __riscv_vmv_v_x_u32m1(sum_bits, vl);
    //     vfloat32m1_t vsum_vl = __riscv_vreinterpret_v_u32m1_f32m1(vsum_bits_vl);
    //     vuint32m1_t veps_bits = __riscv_vmv_v_x_u32m1(0x322BCC77u, vl); // 1e-8f
    //     vfloat32m1_t veps = __riscv_vreinterpret_v_u32m1_f32m1(veps_bits);
    //     vsum_vl = __riscv_vfadd_vv_f32m1(vsum_vl, veps, vl);

    //     // 初值：vfrec7 估计 1/sum
    //     vfloat32m1_t vinv = __riscv_vfrec7_v_f32m1(vsum_vl, vl);

    //     // 常量 2.0
    //     vuint32m1_t vtwo_bits = __riscv_vmv_v_x_u32m1(0x40000000u, vl);
    //     vfloat32m1_t vtwo = __riscv_vreinterpret_v_u32m1_f32m1(vtwo_bits);

    //     // NR 第一次：x = x * (2 - d*x)
    //     vfloat32m1_t corr = __riscv_vfnmsac_vv_f32m1(vtwo, vsum_vl, vinv, vl); // 2 - d*x
    //     vinv = __riscv_vfmul_vv_f32m1(vinv, corr, vl);

    //     // NR 第二次：再细化一次
    //     corr = __riscv_vfnmsac_vv_f32m1(vtwo, vsum_vl, vinv, vl);              // 2 - d*x
    //     vinv = __riscv_vfmul_vv_f32m1(vinv, corr, vl);                          // 约 23 位

    //     // 归一化：row /= sum ≈ row * inv(sum)
    //     row = __riscv_vfmul_vv_f32m1(row, vinv, vl);

    //     __riscv_vse32_v_f32m1(dst, row, vl);
    //     avl -= vl;
    //     dst += vl;
    // }
    // dst = dst_orig; // 重置目标指针
    
    // //打印最终结果
    // dbg_print_line("Final results:\n");
    // for (size_t i = 0; i < n; i++) {
    //     dbg_print_idx_hex32("dst", (uint32_t)i, "bits", load_f32_bits(&dst[i]));
    //     dbg_print_idx_hex32("golden", (uint32_t)i, "bits", load_f32_bits(&golden[i]));
    // }
}

// /** RVV-based vectorized implementation avoiding scalar FP registers */
// uint32_t quick_dirty_vector_expf_no_scalar(float* dst, float* src, uint32_t max_x_bits, size_t n) {
//     // 常量数组，通过整数访问
//     static const uint32_t exp_constants[] = {
//         0x3F317218,  // ln(2)
//         0x3FB8AA3B,  // 1/ln(2)
//         0x00000000,  // 0.0f
//         0x3F800000,  // c0 = 1.0
//         0x3F800000,  // c1 = 1.0
//         0x3F000000,  // c2 = 1/2 = 0.5
//         0x3E2AAAAB,  // c3 = 1/6 ≈ 0.16666667
//         0x3D2AAAAB,  // c4 = 1/24 ≈ 0.04166667
//         0x3C088889,  // c5 = 1/120 ≈ 0.00833333
//         0x3AB60B61,  // c6 = 1/720 ≈ 0.00138889
//         0x3A1175D4,  // c7 = 1/5040 ≈ 0.00019841 (新增)
//         0x3926ED8E,  // c8 = 1/40320 ≈ 0.00002480 (新增)
//         0x3F317000,  // ln2_hi (高位部分)
//         0x38800C00   // ln2_lo (低位部分)
//     };
    
//     // dbg_print_hex32("exp max_x bits", max_x_bits);

//     const size_t vlmax = __riscv_vsetvlmax_e32m1();
    
//     // 通过整数向量创建浮点常量
//     vuint32m1_t vln2_int = __riscv_vmv_v_x_u32m1(exp_constants[0], vlmax);
//     vuint32m1_t viln2_int = __riscv_vmv_v_x_u32m1(exp_constants[1], vlmax);
//     vuint32m1_t vzero_int = __riscv_vmv_v_x_u32m1(exp_constants[2], vlmax);
//     vuint32m1_t vln2_hi_int = __riscv_vmv_v_x_u32m1(exp_constants[12], vlmax);
//     vuint32m1_t vln2_lo_int = __riscv_vmv_v_x_u32m1(exp_constants[13], vlmax);
    
//     vfloat32m1_t vln2 = __riscv_vreinterpret_v_u32m1_f32m1(vln2_int);
//     vfloat32m1_t viln2 = __riscv_vreinterpret_v_u32m1_f32m1(viln2_int);
//     vfloat32m1_t vzero = __riscv_vreinterpret_v_u32m1_f32m1(vzero_int);
//     vfloat32m1_t vln2_hi = __riscv_vreinterpret_v_u32m1_f32m1(vln2_hi_int);
//     vfloat32m1_t vln2_lo = __riscv_vreinterpret_v_u32m1_f32m1(vln2_lo_int);

//     // 多项式系数
//     vfloat32m1_t poly_c_0 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[3], vlmax));
//     vfloat32m1_t poly_c_1 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[4], vlmax));
//     vfloat32m1_t poly_c_2 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[5], vlmax));
//     vfloat32m1_t poly_c_3 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[6], vlmax));
//     vfloat32m1_t poly_c_4 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[7], vlmax));
//     vfloat32m1_t poly_c_5 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[8], vlmax));
//     vfloat32m1_t poly_c_6 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[9], vlmax));
//     vfloat32m1_t poly_c_7 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[10], vlmax));
//     vfloat32m1_t poly_c_8 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(exp_constants[11], vlmax));

//     // max_x 从整数转换为向量
//     vuint32m1_t vmax_x_int = __riscv_vmv_v_x_u32m1(max_x_bits, vlmax);
//     vfloat32m1_t vmax_x = __riscv_vreinterpret_v_u32m1_f32m1(vmax_x_int);

//     // 初始化总和为0
//     vfloat32m1_t vsum = vzero;

//     float* src_orig = src;
//     float* dst_orig = dst;
    
//     asm volatile ("csrw frm, %0" : : "i" (0x0)); 
//     size_t avl = n;
//     while (avl > 0) {
//         size_t vl = __riscv_vsetvl_e32m1(avl);
//         vfloat32m1_t vx = __riscv_vle32_v_f32m1(src, vl);
//         vx = __riscv_vfsub_vv_f32m1(vx, vmax_x, vl);

//         vfloat32m1_t vexp_vx;
//         // 更精确的范围缩减和多项式计算
//         {
//             unsigned old_frm;
//             asm volatile("csrr %0, frm" : "=r"(old_frm));
//             asm volatile("csrw frm, %0" :: "r"(0)); // RNE

//             vfloat32m1_t vxiln2 = __riscv_vfmul_vv_f32m1(vx, viln2, vl);
//             vint32m1_t   vk     = __riscv_vfcvt_x_f_v_i32m1(vxiln2, vl);

//             asm volatile("csrw frm, %0" :: "r"(old_frm));

//             // 更精确的 k*ln(2) 计算
//             vfloat32m1_t vfk  = __riscv_vfcvt_f_x_v_f32m1(vk, vl);
//             vfloat32m1_t vkl2_hi = __riscv_vfmul_vv_f32m1(vfk, vln2_hi, vl);
//             vfloat32m1_t vkl2_lo = __riscv_vfmul_vv_f32m1(vfk, vln2_lo, vl);
//             vfloat32m1_t vr   = __riscv_vfsub_vv_f32m1(vx, vkl2_hi, vl);
//             vr = __riscv_vfsub_vv_f32m1(vr, vkl2_lo, vl);

//             // 8阶 Horner 方法
//             vfloat32m1_t p = poly_c_8;
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_7, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_6, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_5, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_4, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_3, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_2, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_1, vl);
//             p = __riscv_vfmadd_vv_f32m1(p, vr, poly_c_0, vl);

//             // 2^k 重建
//             const int exp_bias = 127;
//             vint32m1_t vbiased_exp = __riscv_vadd_vx_i32m1(vk, exp_bias, vl);
//             vint32m1_t vexp2_vk    = __riscv_vsll_vx_i32m1(vbiased_exp, 23, vl);
//             vfloat32m1_t vfexp2_vk = __riscv_vreinterpret_v_i32m1_f32m1(vexp2_vk);

//             vexp_vx = __riscv_vfmul_vv_f32m1(p, vfexp2_vk, vl);
//         }

//         __riscv_vse32_v_f32m1(dst, vexp_vx, vl);

//         // 使用有序归约提高精度
//         vfloat32m1_t vblk_sum = __riscv_vfredosum_vs_f32m1_f32m1(vexp_vx, vzero, vl);
        
//         // 累加到总和
//         vsum = __riscv_vfadd_vv_f32m1(vsum, vblk_sum, __riscv_vsetvl_e32m1(1));

//         avl -= vl;
//         src += vl;
//         dst += vl;
//     }

//     src = src_orig;
//     dst = dst_orig;

//     // 最终归约
//     vfloat32m1_t vredsum = __riscv_vfredosum_vs_f32m1_f32m1(vsum, vzero, __riscv_vsetvl_e32m1(1));

//     // 通过整数返回结果
//     uint32_t result_bits[1];
//     vuint32m1_t vredsum_int = __riscv_vreinterpret_v_f32m1_u32m1(vredsum);
//     __riscv_vse32_v_u32m1(result_bits, vredsum_int, 1);
    
//     // dbg_print_hex32("Returning sum bits", result_bits[0]);
    
//     return result_bits[0];
// }