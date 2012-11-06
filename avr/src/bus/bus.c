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
		// Pull output bus down TODO nødvendig?
		if (i >= FPGA_DATA_IN_BUS_OFFSET) {
			gpio_clr_gpio_pin(fpga_bus[i]);
		}
	}
}

int bus_send_data(U32 word, int bus_offset, int bus_size) {
	if ((bus_offset+bus_size) > FPGA_BUS_SIZE) return -1; // bus index will get out of bounds
	int i,j;
	U32 power_of_two = 1;
	U32 pin;
	for (i=bus_offset, j=0; i < bus_offset+bus_size; ++i, ++j) {
		pin = word & power_of_two;
		if (pin == 0) {
			gpio_clr_gpio_pin(fpga_bus[i]);
		} else if (pin == power_of_two){
			gpio_set_gpio_pin(fpga_bus[i]);
		}
		power_of_two = power_of_two << 1;
	}
	return 0;
}

U8 bus_receive_data(void) {
	U8 data = 0;
	int i,j;
	U32 power_of_two = 1;
	for (i=FPGA_IO_BUS_OFFSET, j=0; i < FPGA_IO_BUS_OFFSET+FPGA_IO_BUS_SIZE; ++i, ++j) {
		if (gpio_get_pin_value(fpga_bus[i]) == 1) {
			data |= power_of_two;
		}
		power_of_two = power_of_two << 1;
	}
	return data;
}

void bus_toggle_inc_clk_line() {
	gpio_tgl_gpio_pin(fpga_bus[FPGA_INC_CLK_LINE]);
}

void bus_toggle_set_state_line() {
	gpio_tgl_gpio_pin(fpga_bus[FPGA_SET_STATE_LINE]);
}

