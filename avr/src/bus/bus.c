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


// TODO dette ligger også 'shades_of_gray.h' under BOARDS som vi begynner å bruke når vi får PCBen
// ------------------------------------ //
#define FPGA_IO_00 AVR32_PIN_PA25
#define FPGA_IO_01 AVR32_PIN_PA26
#define FPGA_IO_02 AVR32_PIN_PA27
#define FPGA_IO_03 AVR32_PIN_PA28
#define FPGA_IO_04 AVR32_PIN_PC00
#define FPGA_IO_05 AVR32_PIN_PC01
#define FPGA_IO_06 AVR32_PIN_PB00
#define FPGA_IO_07 AVR32_PIN_PB01
#define FPGA_IO_CTRL AVR32_PIN_PB02

#define FPGA_IN_00 AVR32_PIN_PB03
#define FPGA_IN_01 AVR32_PIN_PB04
#define FPGA_IN_02 AVR32_PIN_PB05
#define FPGA_IN_03 AVR32_PIN_PB06
#define FPGA_IN_04 AVR32_PIN_PB07
#define FPGA_IN_05 AVR32_PIN_PB08
#define FPGA_IN_06 AVR32_PIN_PB09
#define FPGA_IN_07 AVR32_PIN_PB10
#define FPGA_IN_08 AVR32_PIN_PB11
#define FPGA_IN_09 AVR32_PIN_PB12
#define FPGA_IN_10 AVR32_PIN_PA29
#define FPGA_IN_11 AVR32_PIN_PA30
#define FPGA_IN_12 AVR32_PIN_PB13
#define FPGA_IN_13 AVR32_PIN_PB14
#define FPGA_IN_14 AVR32_PIN_PC04
#define FPGA_IN_15 AVR32_PIN_PC05
#define FPGA_IN_16 AVR32_PIN_PB15
#define FPGA_IN_17 AVR32_PIN_PX35
#define FPGA_IN_18 AVR32_PIN_PB16
#define FPGA_IN_19 AVR32_PIN_PX36
#define FPGA_IN_20 AVR32_PIN_PB17
#define FPGA_IN_21 AVR32_PIN_PX37
#define FPGA_IN_22 AVR32_PIN_PB18
#define FPGA_IN_23 AVR32_PIN_PX38
#define FPGA_IN_24 AVR32_PIN_PB19
#define FPGA_IN_25 AVR32_PIN_PX39
#define FPGA_IN_26 AVR32_PIN_PX00
#define FPGA_IN_27 AVR32_PIN_PX01
#define FPGA_IN_28 AVR32_PIN_PX02

#define FPGA_BUS_SIZE 38
// ------------------------------------ //

//24 pinner for data

int fpga_bus[] = {
		FPGA_IO_00,
		FPGA_IO_01,
		FPGA_IO_02,
		FPGA_IO_03,
		FPGA_IO_04,
		FPGA_IO_05,
		FPGA_IO_06,
		FPGA_IO_07,
		FPGA_IO_CTRL,
		FPGA_IN_00, //9
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
		FPGA_IN_24,
		FPGA_IN_25, //34
		FPGA_IN_26, //35
		FPGA_IN_27, //36
		FPGA_IN_28  //37
};

int power_of_two[] =  	{1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,
						65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,
						33554432,67108864,134217728,268435456,536870912,1073741824};
						//TODO kan dette settes i en makro-liste?

void bus_init(void) {
	int i;
	for (i = 0; i < FPGA_BUS_SIZE; ++i) {
		// Enable pins
		gpio_enable_gpio_pin(fpga_bus[i]);
		// Pull bus down
		gpio_clr_gpio_pin(fpga_bus[i]);
	}
}

void bus_conf(void){
	//TODO
}

int bus_send_data(U32 word, int bus_offset, int bus_size) {
	if ((bus_offset+bus_size) > FPGA_BUS_SIZE) return -1; // bus index will get out of bounds
	serial_write("sending data\n");
	int i,j;
	U32 pin;
	for (i=bus_offset, j=0; i < bus_offset+bus_size; ++i, ++j) {
		pin = word & power_of_two[j];
		if (pin == 0) {
			gpio_clr_gpio_pin(fpga_bus[i]);
			serial_write("0");
		} else if (pin == power_of_two[j]){
			gpio_set_gpio_pin(fpga_bus[i]);
			serial_write("1");
		}
	}
	serial_write("\n\n");
	return 0;
}

U8 bus_receive_data(U8 *data) {
	*data = 0;
	int i,j;
	for (i=FPGA_IO_BUS_OFFSET, j=0; i < FPGA_IO_BUS_OFFSET+FPGA_IO_BUS_SIZE; ++i, ++j) {
		if (gpio_get_pin_value(fpga_bus[i]) == 1) {
			*data |= power_of_two[j];
		}
	}
	return gpio_get_pin_value(FPGA_IO_CTRL);
}

void bus_toggle_inc_clk() {
	gpio_tgl_gpio_pin(fpga_bus[FPGA_INC_CLK_OFFSET]);
}


