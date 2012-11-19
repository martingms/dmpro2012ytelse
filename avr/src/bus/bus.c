/*
 * bus.c
 *
 *  Created on: Oct 11, 2012
 *      Author: erik
 */

#include "bus.h"

#include "board.h"
#include "gpio.h"
#include "compiler.h"
#include "fpga.h"

static volatile avr32_gpio_port_t *portB = &AVR32_GPIO.port[1];

int fpga_bus[] = {
		FPGA_IO_00,	// 0 (FPGA_IO_BUS_OFFSET)
		FPGA_IO_01,
		FPGA_IO_02,
		FPGA_IO_03,
		FPGA_IO_04,
		FPGA_IO_05,
		FPGA_IO_06,
		FPGA_IO_07,
		FPGA_IO_CTRL,
		FPGA_IN_00, //9 (FPGA_DATA_IN_BUS_OFFSET)
		FPGA_IN_01,
		FPGA_IN_02,
		FPGA_IN_03,
		FPGA_IN_04,
		FPGA_IN_05,
		FPGA_IN_06,
		FPGA_IN_07,
		FPGA_IN_08,
		FPGA_IN_09,
		FPGA_IN_10,
		FPGA_IN_11, //20
		FPGA_IN_12,
		FPGA_IN_13,
		FPGA_IN_14,
		FPGA_IN_15,
		FPGA_IN_16,
		FPGA_IN_17,
		FPGA_IN_18,
		FPGA_IN_19,
		FPGA_IN_20,
		FPGA_IN_21, //30
		FPGA_IN_22,
		FPGA_IN_23,
		FPGA_IN_24,	//33 (FPGA_INC_CLK_LINE)
		FPGA_IN_25, //34 (FPGA_SET_STATE_LINE)
		FPGA_IN_26, //35 (FPGA_STATE_OFFSET)
		FPGA_IN_27, //36
		FPGA_IN_28  //37
};

void bus_init(void) {
	int i;
	for (i = 0; i < FPGA_BUS_SIZE; ++i) {
		// Enable pins
		gpio_enable_gpio_pin(fpga_bus[i]);
		// Pull output bus down
		/*if (i >= FPGA_DATA_IN_BUS_OFFSET) {
			gpio_clr_gpio_pin(fpga_bus[i]);
		}*/
		fpga_set_state(FPGA_STATE_STOP);
	}
    portB->oders = (0xFF << 7) | (1 << 19);
	portB->gpers = (0xFF << 7) | (1 << 19);
}

int bus_send_data(U32 word, int bus_offset, int bus_size) {
	if ((bus_offset+bus_size) > FPGA_BUS_SIZE) return -1; // bus index will get out of bounds
	int i,j;
	U32 bit_mask = 1;
	U32 pin;
	for (i=bus_offset, j=0; i < bus_offset+bus_size; ++i, ++j) {
		pin = word & bit_mask;
		if (pin == 0) {
			gpio_clr_gpio_pin(fpga_bus[i]);
		} else {
			gpio_set_gpio_pin(fpga_bus[i]);
		}
		bit_mask = bit_mask << 1;
	}
	return 0;
}


static U8 last[3] = { 0, 0, 0 }; // data uses only middle byte
void bus_send_data_byte(U8 byte) {
	portB->ovrt = ((byte ^ last[1]) << 7);
	portB->ovrt = 1<<19;
	last[1] = byte;
}

void bus_send_data_word(U32 word) {
	U8* ptr = (U8*)&word;

	portB->ovrt = ((ptr[0] ^ last[1]) << 7);
	portB->ovrt  = 1<<19;
	portB->ovrt = ((ptr[1] ^ ptr[0]) << 7);
	portB->ovrt  = 1<<19;
	portB->ovrt = ((ptr[2] ^ ptr[1]) << 7);
	portB->ovrt  = 1<<19;
	portB->ovrt = ((ptr[3] ^ ptr[2]) << 7);
	portB->ovrt  = 1<<19;

	last[1] = ptr[3];
}

void bus_send_data_words(U32 *words, size_t count) {
	while(count--) {
		bus_send_data_word(*words++);
	}
}

void bus_send_data_bytes(U8 *bytes, size_t count) {
	while(count--) {
		bus_send_data_byte(*bytes++);
	}
}

// set all data pins low (needed between instruction send and data send)
void bus_flush_data_bus() {
	portB->ovrc = 0xFF << 7;
	last[1] = '\0';
}

// sends a program (using 24-bit bus width) to the FPGA
void bus_send_program(U8 *program, size_t bytes) {
	U8 *ptr = program, *stop = program + bytes;
	while (ptr < stop) {
		bus_send_data(ptr[3], FPGA_DATA_IN_BUS_OFFSET, 8);
		bus_send_data(ptr[2], FPGA_DATA_IN_BUS_OFFSET + 8, 8);
		bus_send_data(ptr[1], FPGA_DATA_IN_BUS_OFFSET + 16, 8);
		portB->ovrt = 1<<19;
		ptr += 4;
	}
}


//void bus_send_instr_word(U32 instr) {
//	// high byte of instr is not used (only 2..0)
//	// 2 is "first"
//
//	int i;
//	for (i = 0; i < 24; i++) {
//		if (instr & (1 << (23 - i))) {
//			gpio_set_gpio_pin(fpga_bus[FPGA_DATA_IN_BUS_OFFSET + i]);
//		} else {
//			gpio_clr_gpio_pin(fpga_bus[FPGA_DATA_IN_BUS_OFFSET + i]);
//		}
//	}
//
//	bus_toggle_inc_clk_line();
//
//	last[0] = (instr & 0x00FF0000) >> 16;
//	last[1] = (instr & 0x0000FF00) >> 8;
//	last[2] = (instr & 0x000000FF) >> 0;
//}

U8 bus_receive_data(void) {
	U8 data = 0;
	U8 bit_mask = 1;
	int i,j;
	for (i=FPGA_IO_BUS_OFFSET, j=0; i < FPGA_IO_BUS_OFFSET+FPGA_IO_BUS_SIZE; ++i, ++j) {
		if (gpio_get_pin_value(fpga_bus[i]) == 1) {
			data |= bit_mask;
		}
		bit_mask = bit_mask << 1;
	}
	return data;
}

void bus_toggle_inc_clk_line() {
	gpio_tgl_gpio_pin(fpga_bus[FPGA_INC_CLK_LINE]); //TODO hør med FPGA om dette
}

void bus_toggle_set_state_line() {
	gpio_tgl_gpio_pin(fpga_bus[FPGA_SET_STATE_LINE]); //TODO hør med FPGA om dette
}

