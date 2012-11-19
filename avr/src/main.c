
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
#include "timer.h"

#include "led.h"
#include "fpga.h"
#include "button.h"
#include "bus.h"
#include "intc.h"
#include "filebrowser.h"
#include "screen.h"
#include "str2img.h"
#include "program_select.h"


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
	if (rc) LED_On(LED0|LED1|LED7);
	Enable_global_interrupt();

	// SD card
	mmc_init();

	// Files
	while (mmc_status() != CTRL_GOOD);
	b_fsaccess_init();

	 // SRAM
	smc_init(PBA_SPEED);

	// Bus
	bus_init();

	// String to image
	str2img_init(STR2IMG_INTERNAL_BUFFER);
	str2img_clear();

	// Timer
	timer_init();
}


void b_handler(U8 button) {
	LED_Toggle(button);
	return;
}


int main(void) {
	init();
//	button_reg_listener(&b_handler);
	program_select_start();
	while(TRUE);
}
