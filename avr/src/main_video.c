/*
#include <string.h>
#include <stdio.h>
#include "compiler.h"
#include "board.h"
#include "power_clocks_lib.h"
#include "gpio.h"
#include "intc.h"
#include "fsaccess.h"
#include "ctrl_access.h"
#include "serial/serial.h"
#include "mmc/mmc.h"
#include "sd_mmc_spi.h"
#include "freqs.h"
#include "fpga.h"
#include "bus.h"
#include "str2img.h"

#include "smc.h"
#include "smc_peripheral.h"

#include <avr32/io.h>

#define SRAM              ((void *)AVR32_EBI_CS1_ADDRESS)
#define SRAM_SIZE         (1 << smc_get_cs_size(1))


pcl_freq_param_t pcl_freq_param = {
                .cpu_f = CPU_SPEED,
                .pba_f = PBA_SPEED,
                .osc0_f = FOSC0,
                .osc0_startup = OSC0_STARTUP
};

static volatile avr32_gpio_port_t *portB = &AVR32_GPIO.port[1];

__inline__ void fpga_send_byte(U8 word) {
	static U8 last = '\0';
	portB->ovrt = (word ^ last) << 7;
	portB->ovrt  = (1 << 19);
	last = word;
}

fpga_send_data(U8 *data, size_t count) {
	fpga_set_state(FPGA_STATE_LOAD_DATA);
	while(count--) {
		fpga_send_byte(*data++);
	}
}


void send_fancy_pattern() {
	fpga_set_state(FPGA_STATE_STOP);


	U8 *buf = SRAM;
	int clr_ctr = 76800;
	while(clr_ctr)
		buf[clr_ctr--] = 0;

	U8 *stop = &buf[76801];

	int line = 0, col = 0;
	int ctr = 0;
	while (1) {
		U8 *ptr = &buf[320*line];
		for(col = 162; col < 168; col++) {
			ptr[col] ^= 0xFF;
		}

		fpga_set_state(FPGA_STATE_LOAD_DATA);
		ptr = buf;

		if (++ctr > 40) {
			LED_Toggle(LED1);
			ctr = 0;
		}
		while (ptr <= stop) {
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
			fpga_send_byte(*ptr++);
		}
		fpga_set_state(FPGA_STATE_STOP);
		volatile int foo = 160000;
		while(foo--);

		line++;
		line %= 240;
	}
}

int read_sd_directly() {
	mmc_init();
	U8 *sram = SRAM;
	U8 *stop = &sram[320*240+1];

	int frames = 500;
	U8 blocks_per_frame = 150;
	int i;

	LED_On(LED0);
	for (i=0; i < frames; i++) {
		fpga_set_state(FPGA_STATE_STOP);
		LED_Toggle(LED1);
		sd_mmc_spi_read_open(blocks_per_frame * i);
		sd_mmc_spi_read_multiple_sectors_to_ram(sram, blocks_per_frame);
		LED_Toggle(LED1);
		LED_Toggle(LED2);

		fpga_send_data(sram, 320*240);
		LED_Toggle(LED2);
	}
	LED_On(LED3);
	while(1);
}

void read_fs_file() {

	mmc_init();
	while (mmc_status() != CTRL_GOOD);
	LED_On(LED1);

	b_fsaccess_init();
	const char *file = "A:/video";
	int fd = open(file, O_RDONLY);
	if (fd < 0) {
		LED_On(LED4); LED_On(LED5);
		LED_On(LED6); LED_On(LED7);
		while(1);
	}

	int fs = fsaccess_file_get_size(fd);
	int read_so_far = 0;
	fpga_set_state(FPGA_STATE_LOAD_DATA);
	LED_On(LED2);

	U8* sram = SRAM;
	U8 *sram_curr_addr = (U8*)sram;
	U8* ptr = sram_curr_addr;

	int bufsize = 4096;

	while (read_so_far < fs) {
		int rd = read(fd, (void*)sram_curr_addr, bufsize);
		read_so_far += rd;
		sram_curr_addr += bufsize;

		if (read_so_far % 76800 == 0) {
			fpga_set_state(FPGA_STATE_LOAD_DATA);
			ptr = sram;
			while (ptr != sram_curr_addr) {
				fpga_send_byte(*ptr++);
			}
			fpga_send_byte(*ptr++);
			sram_curr_addr = sram;

			LED_Toggle(LED7);
			fpga_set_state(FPGA_STATE_STOP);
		}
	}

	close(fd);
	LED_On(LED3);

	fpga_set_state(FPGA_STATE_STOP);

}

int main(void)
{
    pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
    if (pcl_configure_clocks(&pcl_freq_param) != PASS) {
            LED_On(LED0); LED_On(LED1);
            LED_On(LED2); LED_On(LED3);
            while(1);
    }

    // SRAM, yay
    smc_init(PBA_SPEED);
//    gpio_enable_module(SMC_EBI_GPIO_MAP, sizeof(SMC_EBI_GPIO_MAP)
//						/ sizeof(SMC_EBI_GPIO_MAP[0]));

    gpio_enable_gpio_pin(FPGA_IN_00); // data 0
    gpio_enable_gpio_pin(FPGA_IN_01);
    gpio_enable_gpio_pin(FPGA_IN_02);
    gpio_enable_gpio_pin(FPGA_IN_03);
    gpio_enable_gpio_pin(FPGA_IN_04);
    gpio_enable_gpio_pin(FPGA_IN_05);
    gpio_enable_gpio_pin(FPGA_IN_06);
    gpio_enable_gpio_pin(FPGA_IN_07); // data 7
    gpio_enable_gpio_pin(FPGA_IN_08); // data 8
    gpio_enable_gpio_pin(FPGA_IN_09);
    gpio_enable_gpio_pin(FPGA_IN_10);
    gpio_enable_gpio_pin(FPGA_IN_11);
    gpio_enable_gpio_pin(FPGA_IN_12);
    gpio_enable_gpio_pin(FPGA_IN_13);
    gpio_enable_gpio_pin(FPGA_IN_14);
    gpio_enable_gpio_pin(FPGA_IN_15); // data 15
    gpio_enable_gpio_pin(FPGA_IO_CTRL); // ack line
    gpio_enable_gpio_pin(FPGA_IN_24); // data ready
    gpio_enable_gpio_pin(FPGA_IN_26); // state 0
    gpio_enable_gpio_pin(FPGA_IN_27);
    gpio_enable_gpio_pin(FPGA_IN_28); // state 2

    portB->oders = (0xFF << 7) | (1 << 19);
	portB->gpers = (0xFF << 7) | (1 << 19);

//    gpio_enable_pin_glitch_filter(FPGA_IO_CTRL);

//	send_fancy_pattern();
//	read_sd_directly();
	read_fs_file();

	while(1);
}

*/
