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


void(*listener) (void);

#define FPGA_IO_CTRL AVR32_PIN_PB02 //TODO redundant, kan fjernes når vi får PCBen

U8 fpga_current_state;
bool acked;

void receive_ack(void) {
	acked = TRUE;
}

void fpga_send_data(U32 *words, size_t length) {
	// S.1 - S.6 refers to the stages in 'AVR sends data to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus

	int i;
	U32 word;
	fpga_set_state(FPGA_STATE_LOAD_DATA);									// S.1
	fpga_set_listener(&receive_ack);
	for (i=0; i<length; i++) {
		word = words[i];
		acked = FALSE;
		bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk();												// S.3
		while (acked == FALSE);												// S.4
	}																		// S.5
	fpga_set_listener(DISABLED);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
}

void fpga_send_program(U32 *instructions, size_t length) {
	// S.1 - S.6 refers to the stages in 'AVR sends program to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus

	int i;
	U32 instruction;
	fpga_set_state(FPGA_STATE_LOAD_DATA);									// S.1
	fpga_set_listener(&receive_ack);
	for (i=0; i<length; i++) {
		instruction = instructions[i];
		acked = FALSE;
		bus_send_data(instruction, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk();												// S.3
		while (acked == FALSE);												// S.4
	}																		// S.5
	fpga_set_listener(DISABLED);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
}

void fpga_set_state(U8 state) {
	bus_send_data(state, FPGA_STATE_OFFSET, FPGA_STATE_SIZE);
	fpga_current_state = state;
}

U8 fpga_get_state(void) {
	return fpga_current_state;
}

void fpga_set_listener(void(*l) (void)) {
	listener = l;
}

__attribute__((__interrupt__)) void fpga_interrupt_routine(void) {
	if (listener) listener();
	gpio_clear_pin_interrupt_flag(FPGA_IO_CTRL);
}

int fpga_init_interrupt(void) {
	// Register interrupt
	INTC_register_interrupt(&fpga_interrupt_routine, AVR32_GPIO_IRQ_0 + FPGA_IO_CTRL / 8, AVR32_INTC_INT0);

	// GPIO enable interrupt of buttons on push
	return gpio_enable_pin_interrupt(FPGA_IO_CTRL, GPIO_PIN_CHANGE);

}
