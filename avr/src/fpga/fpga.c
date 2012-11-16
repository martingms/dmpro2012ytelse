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
#include "mmc.h"
#include "sram.h"

#include <fsaccess.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>


#include "led.h"

#define DEFAULT_FPGA_LISTENER &fpga_receive_data
#define DATA_WORD_LENGTH 		1
#define INSTRUCTION_WORD_LENGTH 3

#define BUFFER_SIZE 1024

void(*listener) (void);
U8 fpga_current_state;
bool acked;

void receive_ack(void) {
	acked = TRUE;
}


void fpga_send_data_from_file(const char *file) {

	// Wait for SD card
	while (mmc_status() != CTRL_GOOD);
	LED_On(LED1);
	// Opens file
	int fd = open(file, O_RDONLY);
	if (fd < 0) {
		LED_On(LED4); LED_On(LED5);
		LED_On(LED6); LED_On(LED7);
		while(1);
	}

	// Gets file size
	int fs = fsaccess_file_get_size(fd);
	int read_so_far = 0;

	//fpga_set_state(FPGA_STATE_LOAD_DATA); //TODO redundant, fjern
	LED_On(LED2);

	U8* sram_offset = FRAME_BUFFER;
	U8 *sram_curr_addr = (U8*)sram_offset;
	U8* ptr = sram_curr_addr;

	while (read_so_far < fs) {
		int rd = read(fd, (void*)sram_curr_addr, BUFFER_SIZE);
		read_so_far += rd;
		sram_curr_addr += rd;
		if (read_so_far % FRAME_BUFFER_SIZE == 0) {
			fpga_set_state(FPGA_STATE_LOAD_DATA);
			bus_send_data_words((U32*)sram_offset, FRAME_BUFFER_SIZE);
			sram_curr_addr = sram_offset;

			LED_Toggle(LED7);
			fpga_set_state(FPGA_STATE_STOP);
		}
	}

	close(fd);
	LED_On(LED3);

	//fpga_set_state(FPGA_STATE_STOP);	//TODO redundant
}

/**
 * Sends 8 bit data to the FPGA from given memory address
 */
void fpga_send_data_from_memory(U8 *data, size_t size) {
	// S.1 - S.6 refers to the stages in 'AVR sends program to the FPGA'
	// https://github.com/martingamm/dmpro2012ytelse/wiki/Avr-fpga-bus

	fpga_set_state(FPGA_STATE_LOAD_DATA);											// S.1
	bus_send_data_words((U32*)data, size);
	//fpga_set_listener(&receive_ack);
//	int i;
//	for (i = 0; i < size; ++i) {
//		//acked = FALSE;
//		bus_send_data_byte(data[i]);
//		//while (acked == FALSE);												// S.4
//	}																		// S.5
	//fpga_set_listener(DEFAULT_FPGA_LISTENER); //Denne linjen ødelegger for knappene
	fpga_set_state(FPGA_STATE_RUN);										// S.6
}










// ------[DATA SOURCE FUNCTIONS]------ //
U8 *data_buffer;
size_t n_bytes;
/**
 * Takes one byte from 'data_buffer'.
 * Will not exceed 'n_bytes'.
 * Returns number of bytes read.
 *//*
int byte_count;
int data_from_memory(U32 *buffer) {
	*buffer = 0;
	if (byte_count < n_bytes) {
		*buffer = data_buffer[byte_count++];
		return DATA_WORD_LENGTH;
	}
	return 0;
}*/

/**
 * Takes 3 bytes from 'data_buffer' and puts it in the U32 buffer,
 * bytewise: 0-B3-B2-B1, where B1 is the first byte read from the file.
 * Will not exceed 'n_bytes'.
 * Returns number of bytes read.
 */
int program_from_memory(U32 *buffer) {
	static int i=0;
	int j;
	U32 tmp;
	*buffer = 0;
	for (j=0; j<INSTRUCTION_WORD_LENGTH && i<n_bytes; --j, ++i) {
		tmp = data_buffer[i];
		tmp = tmp << 8*j;
		*buffer |= tmp;
	} //TODO tenk over dette (riktig rekkefølge på bytes)

	if (j < INSTRUCTION_WORD_LENGTH) {
		seprintf("Warning: detected instruction of less than 24 bit width! (fpga.c)\n");
	}
	return j - INSTRUCTION_WORD_LENGTH;
}
// ----------------------------------- //

// ----[SPECIALIZED SEND FUNCTIONS]----//
/*int fpga_send_data_from_memory_old(U8 *data, size_t size) { //TODO gammel, fjern
	data_buffer = data;
	n_bytes = size;
	byte_count = 0;
	return fpga_send(&data_from_memory, FPGA_STATE_LOAD_DATA, DATA_WORD_LENGTH);
}*/



// ------[GENERIC SEND FUNCTION]-------//
int fpga_send_program(const char *program_path) {

	// Wait for SD card
	while (mmc_status() != CTRL_GOOD);
	LED_On(LED1);

	// Opens file
	int fd = open(program_path, O_RDONLY);
	if (fd < 0) {
		LED_On(LED4); LED_On(LED5);
		LED_On(LED6); LED_On(LED7);
		while(1);
	}

	// Gets file size
	int fs = fsaccess_file_get_size(fd);
	int read_so_far = 0;

	fpga_set_state(FPGA_STATE_LOAD_INSTRUCTION);

	// Read from SD into buffer and send (borrowing FRAME_BUFFER for this, which should be OK)
	while (read_so_far < fs) {
		int rd = read(fd, (void*)FRAME_BUFFER, BUFFER_SIZE);
		read_so_far += rd;
		bus_send_program(FRAME_BUFFER, rd);
	}

	fpga_set_state(FPGA_STATE_STOP);
	close(fd);
}


void fpga_receive_data(void) {
#define TRANSFER_SIZE_N_BYTES 4
#define DATA_DUMP_PATH "A:/lena_dump.data"
	int i;
	U8 word = 0;
	U32 tmp;
	U32 transfer_size = 0;
	fpga_set_listener(&receive_ack);

	// Prepare file for data dump
	int fd = open(DATA_DUMP_PATH, O_WRONLY | O_APPEND | O_CREAT, S_IRWXU);
	char text[] = "\n\n\nSTARTING NEW DATA DUMP FROM LENA:\n";
	write(fd, text, strlen(text));

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
		write(fd, &word, sizeof(word)); // Dumps word to SD-card
		while (acked == FALSE);		// Wait for ACK (next byte)
	}
	close(fd);
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
	int rc = gpio_enable_pin_interrupt(FPGA_IO_CTRL, GPIO_RISING_EDGE); //TODO hør med FPGA om dette
	fpga_set_listener(DEFAULT_FPGA_LISTENER);
	return rc;
}
