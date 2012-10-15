#include "test_bus.h"
#include "bus.h"
#include "gpio.h"
#include "compiler.h"


extern int fpga_bus[];

U32 power(int base, int exp) {
	int i, res=1;
	for (i = 0; i < exp; ++i) {
		res *= base;
	}
	return res;
}

int test_bus_send_data(void) {
	int i,j;
	U32 word;
	U32 bus_value;

	word = 0;
	bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);
	for (i = FPGA_DATA_IN_BUS_OFFSET; i < FPGA_DATA_IN_BUS_OFFSET+FPGA_DATA_IN_BUS_SIZE; ++i) {
		if (gpio_get_gpio_pin_output_value(fpga_bus[i]) == 1) {
			return TEST_FAILED_FIRST;
		}
	}

	word = 0xFFFFFFFF;
	bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);

	for (i = FPGA_DATA_IN_BUS_OFFSET; i < FPGA_DATA_IN_BUS_OFFSET+FPGA_DATA_IN_BUS_SIZE; ++i) {
		if (gpio_get_gpio_pin_output_value(fpga_bus[i]) == 0) {
			return TEST_FAILED_SECOND;
		}
	}

	word = 372;
	bus_value = 0;
	bus_send_data(word, FPGA_DATA_IN_BUS_OFFSET, FPGA_DATA_IN_BUS_SIZE);
	for (i = FPGA_DATA_IN_BUS_OFFSET, j=0; i < FPGA_DATA_IN_BUS_OFFSET+FPGA_DATA_IN_BUS_SIZE; ++i, ++j) {
		if (gpio_get_gpio_pin_output_value(fpga_bus[i]) == 1) {
			bus_value |= power(2,j);
		}
	}
	if (word != bus_value) return TEST_FAILED_THIRD;

	return TEST_SUCCESS;
}
