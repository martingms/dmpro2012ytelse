
#include "board.h"
#include "gpio.h"
#include "pm.h"
#include "serial.h"

#define SERIAL_USART AVR32_USART1
#define SERIAL_GPIO_MAP USART1_GPIO_MAP


static const usart_options_t default_uart_opts = {
		.baudrate = 38400,
		.channelmode = USART_NORMAL_CHMODE,
		.charlength = 8,
		.paritytype = USART_NO_PARITY,
		.stopbits = USART_1_STOPBIT
};


static const gpio_map_t USART1_GPIO_MAP = {
		{ AVR32_USART1_RXD_0_0_PIN, AVR32_USART1_RXD_0_0_FUNCTION },
		{ AVR32_USART1_TXD_0_0_PIN, AVR32_USART1_TXD_0_0_FUNCTION },
		{ AVR32_USART1_CLK_0_PIN, AVR32_USART1_CLK_0_FUNCTION }
};


int serial_init()
{
	gpio_enable_module(USART1_GPIO_MAP, sizeof(USART1_GPIO_MAP) / sizeof(USART1_GPIO_MAP[0]));
	return usart_init_rs232(&SERIAL_USART, &default_uart_opts, FOSC0);
}

void serial_write(const char *msg)
{
	usart_write_line(&SERIAL_USART, msg);
}

void serial_putc(const char c) {
	usart_putchar(&SERIAL_USART, c);
}

char serial_getc() {
	return usart_getchar(&SERIAL_USART);
}

int serial_ready() {
	return usart_tx_ready(&SERIAL_USART);
}
