
#include <string.h>
#include <stdio.h>
#include "compiler.h"
#include "board.h"
#include "power_clocks_lib.h"
#include "gpio.h"
#include "fsaccess.h"
#include "ctrl_access.h"
#include "serial/serial.h"
#include "mmc/mmc.h"
#include "sd_mmc_spi.h"
#include "freqs.h"
#include "smc.h"
#include "sram.h"


#include "led.h"
#include "fpga.h"
#include "button.h"
#include "bus.h"
#include "intc.h"
#include "filebrowser.h"
#include "screen.h"
#include "str2img.h"
#include "program_select.h"


static char sprintf_buf[256];

pcl_freq_param_t pcl_freq_param = {
                .cpu_f = CPU_SPEED,
                .pba_f = PBA_SPEED,
                .osc0_f = FOSC0,
                .osc0_startup = OSC0_STARTUP
};

/*
 * Do not delete
 */
void init(void) {
	int rc;

	// Serial
	pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
    if (pcl_configure_clocks(&pcl_freq_param) != PASS) {
            LED_On(LED0); LED_On(LED1);
            LED_On(LED2); LED_On(LED3);
            while(1);
    }

	rc = serial_init();
	//if (rc) LED_On(1);

	// Interrupts
	INTC_init_interrupts();
	rc = fpga_init_interrupt();
	if (rc) seprintf("fpga_init_interrupt error %d\n", rc);
	rc = button_init();
	if (rc) seprintf("button_init error %d\n", rc);
	Enable_global_interrupt();

	// SD card
	mmc_init();

	b_fsaccess_init();

	 // SRAM
	smc_init(PBA_SPEED);

	// Bus
	bus_init();

	// String to image
	str2img_init(STR2IMG_INTERNAL_BUFFER);
	str2img_clear();
}


void b_handler(U8 button) {
	LED_Toggle(button);
	return;
}


int main(void) {
	init();

	//button_reg_listener(&b_handler);
	//screen_display_error_message("test");
	program_select_start();
	//fpga_send_data_from_file("A:/video");

	while(TRUE);
}

/*int test_mmc(void)
{

    pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
    if (pcl_configure_clocks(&pcl_freq_param) != PASS) {
            LED_On(LED0);
            LED_On(LED1);
            LED_On(LED2);
            LED_On(LED4);
            return 1;
    }

	serial_init();
	mmc_init(); // init SPI peripherals

	LED_On(LED0);
	while (mmc_status() != CTRL_GOOD);
	LED_On(LED1);

	// read first 152 blocks (one lenna) five times blocks
	int block;
	int step=1;
	char data[512*step];
	LED_On(LED2);
	serial_write("starting...\n");
	sd_mmc_spi_read_open(0);
	for(block=0;block<152*60;block+=step){
		if ((block+1) % 152 == 0)
			serial_write("doing something...\n");

		Bool st = sd_mmc_spi_read_sector_to_ram(&data);
		if (st != OK) {
			serial_write("error!\n");
		}
	}
//	sprintf(sprintf_buf, "Sum is %d\n", sum);
	serial_write("finished!\n");
//	serial_write(sprintf_buf);
	LED_On(LED3);
	while(1);

//	int i;
//	for (i=0;i<512*step;i++)
//	{
//		sprintf(sprintf_buf, "%3x", data[i]);
//		serial_write(sprintf_buf);
//		if (i % 50 == 0)
//				serial_putc('\n');
//	}
//	serial_putc('\n');
//	serial_putc('\0');

	return 1;

	const char *fname = "A:/1.bmp";

	b_fsaccess_init();


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
		char buf[512];
		if (fs < 512) {

			if ((read_bytes = read(fd, buf, fs)) == fs) {
				sprintf(sprintf_buf, "the file was %d bytes big\n", fs);
				serial_write(sprintf_buf);

				serial_write("This is the data we read:\n");

				buf[fs] = '\0';
				serial_write(buf);
			} else {
				sprintf(sprintf_buf, "file is %d bytes, but I could only read %d!\n", fs, read_bytes);
				serial_write(sprintf_buf);
			}
		} else {
			sprintf(sprintf_buf, "file was bigger than 512b (%d), so not dumping over rs232\n", fs);
						serial_write(sprintf_buf);

			int iterations = 5;
			int transfer_size = 512;


			int i;
			for (i = 0; i < iterations; i++) {
				if (i != 0)
					fd = open(fname, O_RDONLY);

				int rd = 0;
				while (rd < fs) {
					read_bytes = read(fd, buf, transfer_size);
					rd += transfer_size;
				}

				close(fd);

				sprintf(sprintf_buf, "read once!\n");
				serial_write(sprintf_buf);

			}
			sprintf(sprintf_buf, "done! (%u bytes)\n", fs);
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
}*/

