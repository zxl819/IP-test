#include "uart.h"
#include "uart.c"
#include <stdint.h> 

#define CLOCK_FREQUENCY 50000000 //50MHz
#define UART_BITRATE    115200  

// 简单 UART 打印工具
static inline void uart_putc(char c){ write_serial((uint8_t)c); }
static void print_str(const char* s){ while (*s) uart_putc(*s++); }
static void print_u32_dec(uint32_t v){
    char buf[16]; int i=0;
    if (v==0){ uart_putc('0'); return; }
    while (v && i< (int)sizeof(buf)) { buf[i++] = '0' + (v%10); v/=10; }
    while (i--) uart_putc(buf[i]);
}
static void print_u64_dec(uint64_t v){
    char buf[32]; int i=0;
    if (v==0){ uart_putc('0'); return; }
    while (v && i< (int)sizeof(buf)) { buf[i++] = '0' + (v%10); v/=10; }
    while (i--) uart_putc(buf[i]);
}

//================ APB Timer 驱动 ================
#ifndef APB_TIMER_BASE
// TODO: 修改为你的 timer 基地址（APB 4KB aperture）
// 例如 0x1A10_4000 或 0x1002_0000（视 SoC 而定）
#define APB_TIMER_BASE 0x18000000
#endif

#define TMR_REG_TIMER   0x00u  // REG_TIMER
#define TMR_REG_CTRL    0x04u  // REG_TIMER_CTRL
#define TMR_REG_CMP     0x08u  // REG_CMP

#define TMR_CTRL_ENABLE               (1u << 0)     // ENABLE_BIT
#define TMR_CTRL_PRESCALER_SHIFT      3u            // PRESCALER bits [5:3]
#define TMR_CTRL_PRESCALER_MASK       (0x7u << TMR_CTRL_PRESCALER_SHIFT)

static inline void tmr_write(uint32_t off, uint32_t v) {
    *(volatile uint32_t*)(APB_TIMER_BASE + off) = v;
}
static inline uint32_t tmr_read(uint32_t off) {
    return *(volatile uint32_t*)(APB_TIMER_BASE + off);
}

static inline void timer_reset_start(uint32_t prescaler /*0..7*/) {
    // 清零计数与比较寄存器
    tmr_write(TMR_REG_TIMER, 0u);
    tmr_write(TMR_REG_CMP,   0u);
    // 普通计数模式（prescaler=0 表示每个 HCLK 记一次）
    uint32_t ctrl = ((prescaler & 0x7u) << TMR_CTRL_PRESCALER_SHIFT) | TMR_CTRL_ENABLE;
    tmr_write(TMR_REG_CTRL, ctrl);
}

static inline uint32_t timer_stop_read(void) {
    uint32_t ctrl = tmr_read(TMR_REG_CTRL);
    tmr_write(TMR_REG_CTRL, ctrl & ~TMR_CTRL_ENABLE);
    return tmr_read(TMR_REG_TIMER);
}

// 如 HCLK 频率与 UART 宏一致，则可用已有 CLOCK_FREQUENCY
#ifndef TIMER_HZ
#define TIMER_HZ CLOCK_FREQUENCY
#endif


// 小工具：打印一个阶段的周期与微秒
static void print_cycles_us(const char* name, uint32_t cycles) {
    print_str(name); print_str(" cycles: "); print_u32_dec(cycles); print_str("\r\n");
    uint64_t us = ((uint64_t)cycles * 1000000ull) / (uint64_t)TIMER_HZ;
    print_str(name); print_str(" us: "); print_u64_dec(us); print_str("\r\n");
}

//====================== main =========================
int main(){
    init_uart(CLOCK_FREQUENCY, UART_BITRATE);

    uint64_t total_cycles = 0;

    const uint32_t interval_sec = 10u;
    const uint32_t total_sec    = 100u;
    const uint32_t intervals    = total_sec / interval_sec;
    const uint32_t target_cycles = (uint32_t)((uint64_t)TIMER_HZ * (uint64_t)interval_sec);

    for (uint32_t i = 1; i <= intervals; ++i) {
            timer_reset_start(0); // prescaler=0，每个 HCLK 记一次
            // 轮询到达 10 秒
            while (tmr_read(TMR_REG_TIMER) < target_cycles) { /* busy wait */ }
            uint32_t elapsed = timer_stop_read();

            print_str("[tick] "); 
            print_u32_dec(i * interval_sec); 
            print_str("s elapsed (");
            print_u32_dec(elapsed);
            print_str(" cycles)\r\n");
        }

    return 0;
}

