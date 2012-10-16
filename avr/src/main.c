
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
	pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
	serial_init();
	button_init();
	bus_init();
	fpga_init_interrupt();
	Enable_global_interrupt();
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
	int test = test_bus_send_data();
	LED_On(test);




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

	seprintf(sprintf_buf, "The system has %d LUNs\n", get_nb_lun());

	seprintf("trying to open file...\n");

	int fd = open(fname, O_RDONLY);

	if (fd >= 0) {
		seprintf("we got a file!\n");

		int fs = fsaccess_file_get_size(fd);
		int read_bytes;
		if (fs < 512) {
			char buf[512];

			if ((read_bytes = read(fd, buf, fs)) == fs) {
				seprintf(sprintf_buf, "the file was %d bytes big\n", fs);

				seprintf("This is the data we read:\n");

				buf[fs] = '\0'; // lets assume fs != 512
				seprintf(buf);
			} else {
				seprintf(sprintf_buf, "file is %d bytes, but I could only read %d!\n", fs, read_bytes);
			}
		} else {
			seprintf(sprintf_buf, "file was bigger than 512b (%d), so not dumping over rs232\n", fs);
		}
		seprintf("========\ngoodbye\n========\n");
		close(fd);
	} else {
		seprintf("failed to open file\n");
	}
	if(init_sram(FOSC0)){
		const char bmp_test[] = "A:/1.bmp";
		seprintf("Trying to open bmp_test\n");
		fd = open(bmp_test,O_RDONLY);
		if (fd >= 0) {
			seprintf("Got it\n");

			int fs = fsaccess_file_get_size(fd);
			int read_bytes;
			if (fs < 512000) {
				seprintf("Trying to allocate memory:\n");
				char *buf = (char *)malloc(fs);
				assert_critical(buf>0);
				seprintf(sprintf_buf, "allocated at %d\n", (int)buf);

				if ((read_bytes = read(fd, buf, fs)) == fs) {
					seprintf(sprintf_buf, "we read %d bytes\n", fs);
				} else {
					seprintf(sprintf_buf, "file is %d bytes, but I could only read %d!\n", fs, read_bytes);
					read_bytes = read(fd, buf+read_bytes, fs);
					seprintf(sprintf_buf, "Tried again and read %d more!\n", read_bytes);
				}
			}
			else{
				seprintf(sprintf_buf, "the file was %d bytes big\nThat's a little too big\n", fs);
			}
		}
	}
	else{
		seprintf("Couldn't initialize sram properly.\n");
	}
	while (mmc_status() == CTRL_GOOD);
	seprintf("SD disconnected!\n");


	while(1);
}
