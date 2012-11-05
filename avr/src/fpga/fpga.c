/*
 * bus.c
 *
 *  Created on: Oct 11, 2012
 *      Author: erik
 */

#include "fpga.h"
#include "bus.h"
#include "serial.h"
#include "board.h"
#include "compiler.h"
#include "intc.h"
#include "gpio.h"

#include <fsaccess.h>

#define DEFAULT_FPGA_LISTENER &fpga_receive_data
#define DATA_WORD_LENGTH 		1
#define INSTRUCTION_WORD_LENGTH 3

void(*listener) (void);
U8 fpga_current_state;
bool acked;

void receive_ack(void) {
	acked = TRUE;
}

/*
int fpga_send_data_from_file(char *data_path) { //TODO sender kun rådata (tar ikke hensyn til bmp)
	// S.1 - S.6 refers to the stages in 'AVR sends data to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus
	U8 buffer;
	int fd = open(data_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open file: %s\n", data_path);
		return fd;
	}
	fpga_set_state(FPGA_STATE_LOAD_DATA);									// S.1
	fpga_set_listener(&receive_ack);
	while (read(fd, &buffer, DATA_WORD_LENGTH) > 0) {
		acked = FALSE;
		bus_send_data(buffer, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk_line();												// S.3
		while (acked == FALSE);												// S.4
	}																		// S.5
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
	return 0;
}

int fpga_send_data_from_memory(U8 *data, size_t n_bytes) {
	// S.1 - S.6 refers to the stages in 'AVR sends data to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus
	int i;
	fpga_set_state(FPGA_STATE_LOAD_DATA);									// S.1
	fpga_set_listener(&receive_ack);
	for (i=0; i < n_bytes; ++i) {
		acked = FALSE;
		bus_send_data(data[i], FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk_line();												// S.3
		while (acked == FALSE);												// S.4
		i++;
	}																		// S.5
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
	return 0;
}

int fpga_send_program(char *program_path) {
	// S.1 - S.6 refers to the stages in 'AVR sends program to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus
	U32 buffer;
	int i=0;
	int fd = open(program_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open file: %s\n", program_path);
		return fd;
	}
	fpga_set_state(FPGA_STATE_LOAD_DATA);									// S.1
	fpga_set_listener(&receive_ack);
	while (read(fd, &buffer, INSTRUCTION_WORD_LENGTH) > 0) {
		acked = FALSE;
		bus_send_data(buffer, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk_line();												// S.3
		while (acked == FALSE);												// S.4
		i++;
	}																		// S.5
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
	return 0;
}
*/

// ------[GENERIC SEND FUNCTION]-------//
int fpga_send(int(*get_word) (U32), int transfer_state) {
	// S.1 - S.6 refers to the stages in 'AVR sends program to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus
	U32 buffer;
	int i=0;

	fpga_set_state(transfer_state);											// S.1
	fpga_set_listener(&receive_ack);
	while (get_word(buffer) > 0) {
		acked = FALSE;
		bus_send_data(buffer, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);// S.2
		bus_toggle_inc_clk_line();											// S.3
		while (acked == FALSE);												// S.4
		i++;
	}																		// S.5
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	fpga_set_state(FPGA_STATE_STOP);										// S.6
	return 0;
}
// ------------------------------------//


// ------[DATA SOURCE FUNCTIONS]------ //
int fd;
int data_from_file(U32 buffer) {
	return read(fd, &buffer, DATA_WORD_LENGTH);
}
int program_from_file(U32 buffer) {
	return read(fd, &buffer, INSTRUCTION_WORD_LENGTH);
}

U8 *data_buffer;
size_t n_bytes;
int data_from_memory(U32 buffer) {
	static int i=0;
	if (i < n_bytes) {
		buffer = data_buffer[i++];
		return DATA_WORD_LENGTH;
	}
	return 0;
}
// ----------------------------------- //

// ----[SPECIALIZED SEND FUNCTIONS]----//
int fpga_send_data_from_memory(U8 *data, size_t size) {
	data_buffer = data;
	n_bytes = size;
	return fpga_send(&data_from_memory, FPGA_STATE_LOAD_DATA);
}

int fpga_send_data_from_file(char *data_path) {
	int rc;
	fd = open(data_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open file: %s\n", data_path);
		return fd;
	}
	rc = fpga_send(&data_from_file, FPGA_STATE_LOAD_DATA);
	close(fd);
	return rc;
}

int fpga_send_program(char *program_path) {
	int rc;
	fd = open(program_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open file: %s\n", program_path);
		return fd;
	}
	rc = fpga_send(&program_from_file, FPGA_STATE_LOAD_INSTRUCTION);
	close(fd);
	return rc;
}
// ------------------------------------//


void fpga_receive_data(void) {
#define TRANSFER_SIZE_N_BYTES 4
	int i;
	U8 word = 0;
	U32 tmp;
	U32 transfer_size = 0;
	fpga_set_listener(&receive_ack);

	// Read size of data
	for (i = 0; i < TRANSFER_SIZE_N_BYTES; ++i) {
		acked = FALSE;
		tmp = 0;
		tmp = bus_receive_data();	// Read bus
		bus_toggle_inc_clk_line();	// Increment CLK
		tmp = tmp << 8*i;
		transfer_size |= tmp;
		while (acked == FALSE);		// Wait for ACK
	}

	// Read data
	for (i = 0; i < transfer_size; ++i) {
		acked = FALSE;
		word = bus_receive_data();	// Read bus
		bus_toggle_inc_clk_line();	// Increment CLK
		//TODO lagre word et sted
		while (acked == FALSE);		// Wait for ACK
	}

	fpga_set_listener(DEFAULT_FPGA_LISTENER); // Stop listening for ACKs
}

void fpga_run(void) {
	fpga_set_listener(&receive_ack);
	acked = FALSE;
	fpga_set_state(FPGA_STATE_RUN);				// FPGA GO
	while (acked == FALSE);						// Wait for ACK
	fpga_set_listener(DEFAULT_FPGA_LISTENER); 	// Stop listening for ACK
}

void fpga_set_state(U8 state) {
	bus_send_data(state, FPGA_STATE_OFFSET, FPGA_STATE_SIZE);
	fpga_current_state = state;
	bus_toggle_set_state_line();
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
	int rc = gpio_enable_pin_interrupt(FPGA_IO_CTRL, GPIO_PIN_CHANGE);
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	return rc;
}
