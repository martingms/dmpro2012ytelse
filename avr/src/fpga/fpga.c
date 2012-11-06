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
#include "bmp.h"
#include "screen.h"

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

// ------[GENERIC SEND FUNCTION]-------//
int fpga_send(int(*get_word) (U32), int transfer_state, int word_width) {
	// S.1 - S.6 refers to the stages in 'AVR sends program to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus
	U32 buffer;
	int i=0;

	fpga_set_state(transfer_state);											// S.1
	fpga_set_listener(&receive_ack);
	while (get_word(buffer) > 0) {
		acked = FALSE;
		bus_send_data(buffer, FPGA_DATA_IN_BUS_OFFSET, word_width*8);// S.2
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
U8 *data_buffer;
size_t n_bytes;
/**
 * Takes one byte from 'data_buffer'.
 * Will not exceed 'n_bytes'.
 * Returns number of bytes read.
 */
int data_from_memory(U32 buffer) {
	static int i=0;
	buffer = 0;
	if (i < n_bytes) {
		buffer = data_buffer[i++];
		return DATA_WORD_LENGTH;
	}
	return 0;
}

/**
 * Takes 3 bytes from 'data_buffer' and puts it in one U32,
 * bytewise: 0-B1-B2-B3, where B1 is the first byte read from the file.
 * Will not exceed 'n_bytes'.
 * Returns number of bytes read.
 */
int program_from_memory(U32 buffer) {
	static int i=0;
	int j;
	U32 tmp;
	buffer = 0;
	for (j=INSTRUCTION_WORD_LENGTH-1; j>=0 && i<n_bytes; --j, ++i) {
		tmp = data_buffer[i];
		tmp = tmp << 8*j;
		buffer |= tmp;
	}
	if (j>= 0) {
		seprintf("Warning: detected instruction of less than 24 bit width! (fpga.c)\n");
	}
	return INSTRUCTION_WORD_LENGTH-1 - j;
}


// ----------------------------------- //

// ----[SPECIALIZED SEND FUNCTIONS]----//
int fpga_send_data_from_memory(U8 *data, size_t size) {
	data_buffer = data;
	n_bytes = size;
	return fpga_send(&data_from_memory, FPGA_STATE_LOAD_DATA, DATA_WORD_LENGTH);
}

int fpga_send_data_from_file(char *data_path, bool bmp) {
	int fd = open(data_path, O_RDONLY);			// Opens to check size
	size_t file_size = fsaccess_file_get_size(fd);
	U8 file_buffer[file_size];					// Creates buffer
	close(fd);
	read_file(data_path, file_buffer);			// Reads into buffer

	if (bmp) {
		bmiHeader_t bmp_head;
		return fpga_send_data_from_memory(read_BMP_from_buffer(file_buffer, &bmp_head), PICTURE_SIZE);
	}
	return fpga_send_data_from_memory(file_buffer, file_size);

}

int fpga_send_program(char *program_path) {
	int rc;
	int fd = open(program_path, O_RDONLY);			// Opens to check size
	size_t file_size = fsaccess_file_get_size(fd);
	close(fd);
	U8 file_buffer[file_size];						// Creates buffer
	read_file(program_path, file_buffer);			// Reads into buffer

	rc = fpga_send(&program_from_memory, FPGA_STATE_LOAD_INSTRUCTION, INSTRUCTION_WORD_LENGTH);
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
		while (acked == FALSE);		// Wait for ACK (next byte)
	}

	// Read data
	for (i = 0; i < transfer_size; ++i) {
		acked = FALSE;
		word = bus_receive_data();	// Read bus
		bus_toggle_inc_clk_line();	// Increment CLK
		//TODO lagre word et sted
		while (acked == FALSE);		// Wait for ACK (next byte)
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
