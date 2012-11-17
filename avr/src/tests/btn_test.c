#include <string.h>
#include <stdio.h>
#include "compiler.h"
#include "board.h"
#include "power_clocks_lib.h"
#include "gpio.h"
#include "intc.h"

#include "rtc.h"
#include "led.h"

#include <avr32/io.h>

__attribute__((__interrupt__))
void gpio_int_handler(void) {
	if (gpio_get_pin_interrupt_flag(GPIO_PUSH_BUTTON_0)) {
		LED_Toggle(LED0);
		gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_0);
	}
	if(gpio_get_pin_interrupt_flag(GPIO_PUSH_BUTTON_1)) {
		LED_Toggle(LED1);
		gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_1);
	}
	if(gpio_get_pin_interrupt_flag(GPIO_PUSH_BUTTON_2)) {
		LED_Toggle(LED2);
		gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_2);
	}
	if(gpio_get_pin_interrupt_flag(GPIO_PUSH_BUTTON_3)) {
		LED_Toggle(LED3);
		gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_3);
	}
}

void btn_test(void) {
	gpio_enable_pin_interrupt ( GPIO_PUSH_BUTTON_0, GPIO_FALLING_EDGE );
	gpio_enable_pin_interrupt ( GPIO_PUSH_BUTTON_1, GPIO_FALLING_EDGE );
	gpio_enable_pin_interrupt ( GPIO_PUSH_BUTTON_2, GPIO_FALLING_EDGE );
	gpio_enable_pin_interrupt ( GPIO_PUSH_BUTTON_3, GPIO_FALLING_EDGE );

	Disable_global_interrupt();
	INTC_init_interrupts();
	INTC_register_interrupt(&gpio_int_handler, AVR32_GPIO_IRQ_0 + GPIO_PUSH_BUTTON_0/8, AVR32_INTC_INT0);
	INTC_register_interrupt(&gpio_int_handler, AVR32_GPIO_IRQ_0 + GPIO_PUSH_BUTTON_1/8, AVR32_INTC_INT0);
	INTC_register_interrupt(&gpio_int_handler, AVR32_GPIO_IRQ_0 + GPIO_PUSH_BUTTON_2/8, AVR32_INTC_INT0);
	INTC_register_interrupt(&gpio_int_handler, AVR32_GPIO_IRQ_0 + GPIO_PUSH_BUTTON_3/8, AVR32_INTC_INT0);
	Enable_global_interrupt();

//	while(1);
}
