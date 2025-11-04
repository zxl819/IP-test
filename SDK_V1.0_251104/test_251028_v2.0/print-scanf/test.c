
#include "uart.h"
#include "uart.c"
#include <stdint.h> 

#define CLOCK_FREQUENCY 50000000 //50MHz
#define UART_BITRATE    115200  

// 读取一行输入，直到换行符或达到最大长度
static int read_line(char* buf, int maxlen) {
    int i = 0;
    uint8_t c;
    while (i < maxlen - 1) {
        while (!read_serial(&c)) { /* wait */ }

        // 退格：Backspace(0x08) 或 DEL(0x7F)
        if (c == 0x08 || c == 0x7F) {
            if (i > 0) {
                i--;
                print_uart("\b \b"); // 回显删除
            }
            continue;
        }

        // 回车或换行：回显 CRLF 并结束
        if (c == 0x0D || c == 0x0A) {
            print_uart("\r\n");
            break;
        }

        // // 立即回显收到的字符
        // write_serial(c);
        buf[i++] = (char)c;
    }
    buf[i] = 0;
    return i;
}
int main()
{

    init_uart(CLOCK_FREQUENCY, UART_BITRATE);
    print_uart("Successfully entered main function\r\n");

    // 从串口读入到内存并打印出来
    print_uart("Please type something and press Enter:\r\n> ");
    char input_buf[256];
    int n = read_line(input_buf, sizeof(input_buf));
    print_uart("\r\nYou typed: ");
    print_uart(input_buf);
    print_uart("\r\nLength: ");
    print_uart_int((uint32_t)n);
    print_uart("\r\n");
    print_uart("Main function has done\r\n");
    while (1) { }  

}

