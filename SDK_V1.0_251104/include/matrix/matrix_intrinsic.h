#ifndef __MATRIX_INTRINSIC_H__
#define __MATRIX_INTRINSIC_H__

#include <riscv_matrix.h>
#include <riscv_vector.h>

// Only Matrix-0.5
#define CONFIGURATION_MTYPE(hi, li)                                            \
  do {                                                                         \
    msettypei((li));                                                           \
    msettypehi((hi));                                                          \
  } while (0);

#define SET_MBA0_I8() CONFIGURATION_MTYPE(0x0, 0x10)

#define SET_MBA0_I16() CONFIGURATION_MTYPE(0x0, 0x21)

#undef SET_MBA0_I32
static inline void SET_MBA0_I32(void) {
  /* 保持原有配置顺序：先设置 low, 再 high */
  CONFIGURATION_MTYPE(0x0, 0x42);
  /*
   告知编译器这些调用可能通过内联汇编改变若干调用者寄存器或内存，
   避免寄存器被编译器错误地保留并在内联 asm 后继续使用导致地址污染。
   列出常用 caller-saved 寄存器与 memory。
  */
  asm volatile ("" ::: \
    "a0","a1","a2","a3","a4","a5","a6","a7", \
    "t0","t1","t2","t3","t4","t5","t6", "memory");
}

#define SET_MBA0_I64() CONFIGURATION_MTYPE(0x0, 0x83)


// SET DTYPE=FP16 SEW=16
#define SET_MBA0_FP16() CONFIGURATION_MTYPE(0x1, 0x1)
// SET DTYPE=FP32 SEW=32
#define SET_MBA0_FP32() CONFIGURATION_MTYPE(0x4, 0x2)
// SET DTYPE=FP16,F32 SEW=16
#define SET_MBA0_FP16_FP32() CONFIGURATION_MTYPE(0x5, 0x1)
// SET DTYPE=FP16,FP32 SEW=32
#define SET_MBA0_FP32_FP16() CONFIGURATION_MTYPE(0x5, 0x2)

#endif // __MATRIX_INTRINSIC_H__