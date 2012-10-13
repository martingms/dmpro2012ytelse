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


U8 fpga_current_state;

void fpga_toggle_inc_clk() {
	gpio_tgl_gpio_pin(fpga_in[FPGA_INC_CLK_OFFSET]);
}

void fpga_send_data(U32 *words) {
	int i = 0;
	U32 word;
	fpga_set_state(FPGA_STATE_READ_DATA);
	
	while(word = words[i++] != '\0') {
		bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);
		fpga_toggle_inc_clk();
		//usleep(1000); //TODO finn passende ventetid
	}
	fpga_set_state(FPGA_STATE_GO); //TODO kanskje ikke være her
}

void fpga_set_state(U8 state) {
	bus_send_data(state, FPGA_STATE_OFFSET, FPGA_STATE_SIZE);
	fpga_current_state = state;
}

U8 fpga_get_state(void) {
	return fpga_current_state;
}
