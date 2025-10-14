#include <stdio.h>
#include <stdint.h>
// 声明底层 _read（由 uart_driver.c 提供）
extern int _read(int fd, void *buf, size_t cnt);

// 声明 uart_init 函数
void uart_init(uint32_t sys_clk_hz, uint32_t baud_rate);

// 简单阻塞读一个字符（使用 _read）
static int getchar_blocking(void) {
    char c;
    int n = _read(0, &c, 1);
    return n == 1 ? (unsigned char)c : -1;
}

// 从串口读取一行（到 '\n' 或 '\r'），返回长度（不含结尾 0）
static int readline(char* buf, int maxlen) {
    int i = 0;
    while (i < maxlen - 1) {
        int ch = getchar_blocking();
        if (ch < 0) continue;
        if (ch == '\r') continue;
        if (ch == '\n') break;
        buf[i++] = (char)ch;
    }
    buf[i] = 0;
    return i;
}
// 解析十进制无符号整数
static int parse_uint(const char* s) {
    int v = 0;
    while (*s >= '0' && *s <= '9') {
        v = v * 10 + (*s - '0');
        s++;
    }
    return v;
}

int main() {

    // 系统时钟是 50MHz，分频波特率是 115200
    uart_init(50000000, 115200);
    printf("Please enter your age: ");
    char line[32];
    readline(line, sizeof(line));
    int age = parse_uint(line);
    printf("Thank you. You entered age: %d\n", age);
    printf("Hello from apb_uart IP!\n");

    // 进入无限循环，因为在裸机上 main 函数不应该返回
    while(1);
}