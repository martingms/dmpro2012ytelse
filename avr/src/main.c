
#include <string.h>
#include <stdio.h>
#include "compiler.h"
#include "board.h"
#include "intc.h"
#include "gpio.h"
#include "power_clocks_lib.h"
#include "fsaccess.h"
#include "ctrl_access.h"
#include "sdramc.h"

#include "serial.h"
#include "mmc.h"
#include "bus.h"
#include "fpga.h"
#include "button.h"

#include "test_bus.h"



void init(void) {
	int rc;

	// Serial
	pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
	rc = serial_init();
	if (rc) seprintf("serial_init error %d\n", rc)

	// Interrupts
	INTC_init_interrupts();
	rc = fpga_init_interrupt();
	if (rc) seprintf("fpga_init_interrupt error %d\n", rc);
	rc = button_init();
	if (rc) seprintf("button_init error %d\n", rc);
	Enable_global_interrupt();

	// Bus
	bus_init();
}


#include "serial/serial.h"
#include "mmc/mmc.h"
#include "bmp/bmp.h"
#include "assert.h"

#define SDRAM_BASE_ADDRESS 0xD0000000

static char sprintf_buf[256];

/*
 * Initializes the external sram control module and maps the external
 * sram to memory.
 * If possible: change return value to start of mapped memory?
 */
int init_sram(unsigned long FSC){
	serial_write("Trying to init sram... ");
	sdramc_init(FSC);
	serial_write("Done!\n");
	int *test = 0xD0000000;
	test[0] = 1;
	return test[0]==1;
}

int main(void)
{
	init();


	return 0;
}

int tmp(void)
{
	mmc_init(); // init SPI peripherals

	const char *fname = "A:/test";

	pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);

	b_fsaccess_init();
	serial_init();

	LED_On(LED2);

	seprintf("waiting for SD...\n");
	while (mmc_status() != CTRL_GOOD);
	seprintf("SD card found! trying to get access..\n");

	LED_On(LED3);

	seprintf("The system has %d LUNs\n", get_nb_lun());

	seprintf("trying to open file...\n");

	int fd = open(fname, O_RDONLY);

	if (fd >= 0) {
		seprintf("we got a file!\n");

		int fs = fsaccess_file_get_size(fd);
		int read_bytes;
		if (fs < 512) {
			char buf[512];

			if ((read_bytes = read(fd, buf, fs)) == fs) {
				seprintf("the file was %d bytes big\n", fs);

				seprintf("This is the data we read:\n");

				buf[fs] = '\0'; // lets assume fs != 512
				seprintf(buf);
			} else {
				seprintf("file is %d bytes, but I could only read %d!\n", fs, read_bytes);
			}
		} else {
			seprintf("file was bigger than 512b (%d), so not dumping over rs232\n", fs);
		}
		seprintf("========\ngoodbye\n========\n");
		close(fd);
	} else {
		seprintf("failed to open file\n");
	}

	while (mmc_status() == CTRL_GOOD);
	seprintf("SD disconnected!\n");


	while(1);
}
