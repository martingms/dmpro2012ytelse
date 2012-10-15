/*
 * bus.c
 *
 *  Created on: Oct 11, 2012
 *      Author: erik
 */

#include "fpga.h"
#include "bus.h"

#include "board.h"
#include "compiler.h"
#include "intc.h"
#include "gpio.h"


void(*listener) (U8);

#define FPGA_IO_CTRL AVR32_PIN_PB02 //TODO redundant, kan fjernes når pinouten i bus.h er flyttet til board

U8 fpga_current_state;


void fpga_send_data(U32 *words) {
	int i = 0;
	U32 word;
	fpga_set_state(FPGA_STATE_LOAD_DATA);
	
	while((word = words[i++]) != '\0') {
		bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);
		bus_toggle_inc_clk();
		//usleep(1000); //TODO finn passende ventetid
	}
	fpga_set_state(FPGA_STATE_RUN); //TODO kanskje ikke være her
}

void fpga_set_state(U8 state) {
	bus_send_data(state, FPGA_STATE_OFFSET, FPGA_STATE_SIZE);
	fpga_current_state = state;
}

U8 fpga_get_state(void) {
	return fpga_current_state;
}

int fpga_reg_listener(void(*l) (U8)) {
	listener = l;
	return 0;
}

__attribute__((__interrupt__)) void fpga_interrupt_routine(void) {
	listener(gpio_get_pin_value(FPGA_IO_CTRL));
	gpio_clear_pin_interrupt_flag(FPGA_IO_CTRL);
}

int fpga_init_interrupt(void) {
	// Initializes the hardware interrupt controller driver
	INTC_init_interrupts(); //TODO skal denne kalles flere ganger? (ligger også i button)

	// Register interrupt
	INTC_register_interrupt(&fpga_interrupt_routine, AVR32_GPIO_IRQ_0 + FPGA_IO_CTRL / 8, AVR32_INTC_INT0);

	// GPIO enable interrupt of buttons on push
	return gpio_enable_pin_interrupt(FPGA_IO_CTRL, GPIO_PIN_CHANGE);

}
