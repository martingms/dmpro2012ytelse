
#include <string.h>
#include <stdio.h>
#include "compiler.h"
#include "board.h"
#include "intc.h"
#include "gpio.h"
#include "power_clocks_lib.h"
#include "fsaccess.h"
#include "ctrl_access.h"

#include "serial.h"
#include "mmc.h"
#include "bus.h"
#include "fpga.h"
#include "button.h"

#include "test_bus.h"

static char sprintf_buf[256];

void init(void) {
	pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
	serial_init();
	button_init();
	bus_init();
	fpga_init_interrupt();
	Enable_global_interrupt();
}

int tmp(void);

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

	serial_write("waiting for SD...\n");
	while (mmc_status() != CTRL_GOOD);
	serial_write("SD card found! trying to get access..\n");

	LED_On(LED3);

	sprintf(sprintf_buf, "The system has %d LUNs\n", get_nb_lun());
	serial_write(sprintf_buf);

	serial_write("trying to open file...\n");

	int fd = open(fname, O_RDONLY);

	if (fd >= 0) {
		serial_write("we got a file!\n");

		int fs = fsaccess_file_get_size(fd);
		int read_bytes;
		if (fs < 512) {
			char buf[512];

			if ((read_bytes = read(fd, buf, fs)) == fs) {
				sprintf(sprintf_buf, "the file was %d bytes big\n", fs);
				serial_write(sprintf_buf);

				serial_write("This is the data we read:\n");

				buf[fs] = '\0'; // lets assume fs != 512
				serial_write(buf);
			} else {
				sprintf(sprintf_buf, "file is %d bytes, but I could only read %d!\n", fs, read_bytes);
				serial_write(sprintf_buf);
			}
		} else {
			sprintf(sprintf_buf, "file was bigger than 512b (%d), so not dumping over rs232\n", read_bytes);
			serial_write(sprintf_buf);
		}
		serial_write("========\ngoodbye\n=======\n");
		close(fd);
	} else {
		serial_write("failed to open file\n");
	}

	while (mmc_status() == CTRL_GOOD);
	serial_write("SD disconnected!\n");

	while(1);
}
