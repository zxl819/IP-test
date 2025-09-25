/*
LMUL=8
用 e32m8（LMUL=8）一次处理 16×8=128 个元素。
所有矢量计算用 f32m8，归约用 f32m8→f32m1，
再通过整数广播把标量结果扩成 f32m8（避免标量浮点寄存器）。
三处循环的 vsetvl 也改成 e32m8。
vfredmax_vs 和 vfredosum_vs 的第三个参数必须是当前块的 vl
*/ 
#define VLEN 512
#include <riscv_vector.h>
#define INFINITY (__builtin_inff())
#include <stdio.h>
#include <string.h>
#include "data.h"

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

// float src[VLEN/32]={-0.50183952f,1.80285728f,0.92797577f,0.39463395f,-1.37592542f,-1.37602186f,-1.76766551f,1.46470463f,0.40446004f,0.83229029f,-1.91766202f,1.87963939f,1.32977057f,-1.15064359f,-1.27270019f,-1.26638198f};//,-0.78303105f,0.09902573f,-0.27221993f,-0.83508343f,0.44741157f,-1.44202459f,-0.83142143f,-0.53455263f,-0.17572007f,1.14070380f,-1.20130491f,0.05693775f,0.36965826f,-1.81419837f,0.43017942f,-1.31790352f};
// float dst[VLEN/32]={0};

// float golden[VLEN/32]={0.01962993f,0.19671424f,0.08201241f,0.04811186f,0.00819046f,0.00818966f,0.00553576f,0.14027424f,0.04858694f,0.07452876f,0.00476469f,0.21241336f,0.12256793f,0.01025998f,0.00908109f,0.00913865f};//,0.01011935f,0.02444698f,0.01686534f,0.00960609f,0.03463596f,0.00523547f,0.00964133f,0.01297375f,0.01857396f,0.06928197f,0.00666038f,0.02343940f,0.03204493f,0.00360847f,0.03404422f,0.00592735f};
// float diff_mem[VLEN/32]={0};
 float dst[N] = {0};
 float diff_mem[N] = {0};

int main(){
    //softmax_stable_rvv_fp32(dst,src,VLEN/32);
    softmax_stable_rvv_fp32(dst,src,N);

    //softmax_stable_rvv_fp32(dst, (float*)src, N);
    return 0;
}

// 完全避免标量浮点寄存器的版本
void softmax_stable_rvv_fp32(float* dst, float* src, size_t n)
{
    // m1 常量
    const size_t vl1 = __riscv_vsetvl_e32m1(1);
    vfloat32m1_t vzero1   = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(0u, vl1));
    vfloat32m1_t vtwo1    = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(0x40000000u, vl1));   // 2.0f
    vfloat32m1_t veps1    = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(0x322BCC77u, vl1));   // 1e-8f
    vfloat32m1_t vneginf1 = __riscv_vreinterpret_v_u32m1_f32m1(__riscv_vmv_v_x_u32m1(0xFF800000u, vl1));   // -inf

    // m8 常量（通过位广播构造）
    const size_t vlm8 = __riscv_vsetvlmax_e32m8();
    vfloat32m8_t viln2_8   = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3FB8AA3Bu, vlm8)); // 1/ln2
    vfloat32m8_t vln2_hi_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3F317000u, vlm8)); // ln2_hi
    vfloat32m8_t vln2_lo_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x38800C00u, vlm8)); // ln2_lo
    // e^r 多项式系数（Horner，c0..c8）
    vfloat32m8_t pc0_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3F800000u, vlm8)); // 1
    vfloat32m8_t pc1_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3F800000u, vlm8)); // 1
    vfloat32m8_t pc2_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3F000000u, vlm8)); // 1/2
    vfloat32m8_t pc3_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3E2AAAABu, vlm8)); // 1/6
    vfloat32m8_t pc4_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3D2AAAABu, vlm8)); // 1/24
    vfloat32m8_t pc5_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3C088889u, vlm8)); // 1/120
    vfloat32m8_t pc6_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3AB60B61u, vlm8)); // 1/720
    vfloat32m8_t pc7_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3A1175D4u, vlm8)); // 1/5040
    vfloat32m8_t pc8_8 = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(0x3926ED8Eu, vlm8)); // 1/40320

    // Pass-1：全局最大（块内 m8→m1 归约，跨块累积到 m1）
    float* src_orig = src;
    vfloat32m1_t vmax1 = vneginf1;
    size_t avl = n;
    while (avl > 0) {
        size_t vl = __riscv_vsetvl_e32m8(avl);
        vfloat32m8_t vx = __riscv_vle32_v_f32m8(src, vl);
        vfloat32m1_t blk_max = __riscv_vfredmax_vs_f32m8_f32m1(vx, vneginf1, vl); // 这里传 vl
        vmax1 = __riscv_vfmax_vv_f32m1(vmax1, blk_max, vl1);
        avl -= vl; src += vl;
    }
    src = src_orig;

    // 提取 max 的位并供广播使用
    uint32_t max_bits[1];
    __riscv_vse32_v_u32m1(max_bits, __riscv_vreinterpret_v_f32m1_u32m1(vmax1), vl1);

    // Pass-2：计算 exp(x-max) 与总和
    vfloat32m1_t vsum1 = vzero1;
    float* dst_orig = dst;
    size_t avl2 = n;
    while (avl2 > 0) {
        size_t vl = __riscv_vsetvl_e32m8(avl2);

        vfloat32m8_t vx = __riscv_vle32_v_f32m8(src, vl);
        vfloat32m8_t vmaxB = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(max_bits[0], vl));
        vx = __riscv_vfsub_vv_f32m8(vx, vmaxB, vl);

        // k = round(vx/ln2)
        unsigned old_frm; asm volatile("csrr %0, frm" : "=r"(old_frm)); asm volatile("csrw frm, %0" :: "r"(0));
        vfloat32m8_t vxiln2 = __riscv_vfmul_vv_f32m8(vx, viln2_8, vl);
        vint32m8_t   vk     = __riscv_vfcvt_x_f_v_i32m8(vxiln2, vl);
        asm volatile("csrw frm, %0" :: "r"(old_frm));

        // r = x - k*ln2
        vfloat32m8_t vfk    = __riscv_vfcvt_f_x_v_f32m8(vk, vl);
        vfloat32m8_t vkl2hi = __riscv_vfmul_vv_f32m8(vfk, vln2_hi_8, vl);
        vfloat32m8_t vkl2lo = __riscv_vfmul_vv_f32m8(vfk, vln2_lo_8, vl);
        vfloat32m8_t vr     = __riscv_vfsub_vv_f32m8(vx, vkl2hi, vl);
        vr = __riscv_vfsub_vv_f32m8(vr, vkl2lo, vl);

        // e^r 多项式（8阶 Horner）
        vfloat32m8_t p = pc8_8;
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc7_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc6_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc5_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc4_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc3_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc2_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc1_8, vl);
        p = __riscv_vfmadd_vv_f32m8(p, vr, pc0_8, vl);

        // 2^k 重建
        const int exp_bias = 127;
        vint32m8_t vbiased = __riscv_vadd_vx_i32m8(vk, exp_bias, vl);
        vint32m8_t vexp2   = __riscv_vsll_vx_i32m8(vbiased, 23, vl);
        vfloat32m8_t vf2k  = __riscv_vreinterpret_v_i32m8_f32m8(vexp2);

        vfloat32m8_t vexp8 = __riscv_vfmul_vv_f32m8(p, vf2k, vl);
        __riscv_vse32_v_f32m8(dst, vexp8, vl);

        // 块内求和（m8→m1），注意传 vl
        vfloat32m1_t vblk = __riscv_vfredosum_vs_f32m8_f32m1(vexp8, vzero1, vl);
        vsum1 = __riscv_vfadd_vv_f32m1(vsum1, vblk, vl1);

        avl2 -= vl; src += vl; dst += vl;
    }

    // inv(sum)（m1）+ 两次 NR
    vfloat32m1_t vsum1_eps = __riscv_vfadd_vv_f32m1(vsum1, veps1, vl1);
    vfloat32m1_t vinv1 = __riscv_vfrec7_v_f32m1(vsum1_eps, vl1);
    vfloat32m1_t corr = __riscv_vfnmsac_vv_f32m1(vtwo1, vsum1_eps, vinv1, vl1); // 2 - d*x
    vinv1 = __riscv_vfmul_vv_f32m1(vinv1, corr, vl1);
    corr  = __riscv_vfnmsac_vv_f32m1(vtwo1, vsum1_eps, vinv1, vl1);
    vinv1 = __riscv_vfmul_vv_f32m1(vinv1, corr, vl1);

    // 广播 inv(sum) 到 m8 并归一化
    uint32_t inv_bits[1];
    __riscv_vse32_v_u32m1(inv_bits, __riscv_vreinterpret_v_f32m1_u32m1(vinv1), vl1);

    dst = dst_orig;
    size_t avl3 = n;
    while (avl3 > 0) {
        size_t vl = __riscv_vsetvl_e32m8(avl3);
        vfloat32m8_t row   = __riscv_vle32_v_f32m8(dst, vl);
        vfloat32m8_t vinvB = __riscv_vreinterpret_v_u32m8_f32m8(__riscv_vmv_v_x_u32m8(inv_bits[0], vl));
        row = __riscv_vfmul_vv_f32m8(row, vinvB, vl);
        __riscv_vse32_v_f32m8(dst, row, vl);
        avl3 -= vl; dst += vl;
    }

    // 可选：再 load/store 一遍（m8）
    dst = dst_orig;
    size_t avl4 = n;
    while (avl4 > 0) {
        size_t vl = __riscv_vsetvl_e32m8(avl4);
        vfloat32m8_t row2 = __riscv_vle32_v_f32m8(dst, vl);
        __riscv_vse32_v_f32m8(dst, row2, vl);
        avl4 -= vl; dst += vl;
    }
    dst = dst_orig;

    // 调试打印
    // dbg_print_line("Final results:\n");
    // for (size_t i = 0; i < n; i++) {
    //     dbg_print_idx_hex32("dst", (uint32_t)i, "bits", load_f32_bits(&dst_orig[i]));
    //     dbg_print_idx_hex32("golden", (uint32_t)i, "bits", load_f32_bits(&golden[i]));
    // }
}