//#include <string.h>
//#include <stdio.h>
//#include "compiler.h"
//#include "board.h"
//#include "power_clocks_lib.h"
//#include "gpio.h"
//#include "intc.h"
//#include "fsaccess.h"
//#include "ctrl_access.h"
//#include "serial/serial.h"
//#include "mmc/mmc.h"
//#include "sd_mmc_spi.h"
//#include "freqs.h"
//
//#include "rtc.h"
//#include "led.h"
//#include "fpga.h"
//#include "pdca.h"
//#include "bus.h"
//#include "filebrowser.h"
//#include "screen.h"
//#include "script.h"
//#include "program_select.h"
//#include "str2img.h"
//#include "timer.h"
//
//#include "smc.h"
//#include "smc_peripheral.h"
//
//#include "sram.h"
//
//#include <avr32/io.h>
//
//pcl_freq_param_t pcl_freq_param = {
//                .cpu_f = CPU_SPEED,
//                .pba_f = PBA_SPEED,
//                .osc0_f = FOSC0,
//                .osc0_startup = OSC0_STARTUP
//};
//
//static volatile avr32_gpio_port_t *portB = &AVR32_GPIO.port[1];
//
//// in program_select
//extern const char *osd(int i, int num_frames);
//extern void fps_limit(double target_ms);
//
//
//void read_sd_directly(unsigned int first_block, size_t num_frames, double target_fps) {
//	if (!mmc_init()) {
//		LED_On(LED7);
//		while(1);
//	}
//
//	U8 *sram = SRAM;
//	str2img_osd_init(sram);
//
//
//	int blocks_per_frame = 150;
//	int i;
//
//	LED_On(LED0);
//	for (i=0; i < num_frames; i++) {
//
//		fpga_set_state(i == 0 ? FPGA_STATE_STOP : FPGA_STATE_RUN);
//
//		sd_mmc_spi_read_open(first_block + blocks_per_frame * i);
//		sd_mmc_spi_read_multiple_sectors_to_ram(sram, blocks_per_frame);
//
//		fps_limit(1000 / target_fps);
//		osd(i, num_frames);
//
//		fpga_set_state(FPGA_STATE_LOAD_DATA);
//		bus_send_data_bytes(sram, blocks_per_frame * 512);
//		LED_Toggle(LED2);
//
//		if ((i+1) % 100 == 0) {
//			LED_Toggle(LED3);
//		}
//	}
//	fpga_set_state(FPGA_STATE_RUN);
//	while(1);
//}
//
//void read_fs_file() {
//	fpga_set_state(FPGA_STATE_STOP);
//
//	const char *file = "A:/program";
//	int fd = open(file, O_RDONLY);
//	if (fd < 0) {
//		LED_On(LED4); LED_On(LED5);
//		LED_On(LED6); LED_On(LED7);
//		while(1);
//	}
//
//	U8* ptr, *stop;
//
//	fpga_set_state(FPGA_STATE_LOAD_INSTRUCTION);
//
//	char *buf = SRAM;
//	int fs = fsaccess_file_get_size(fd);
//	int rd = read(fd, (void*)buf, fs);
//	ptr = buf;
//	stop = ptr + rd;
//
//	while (ptr < stop) {
//		bus_send_data(ptr[3], FPGA_DATA_IN_BUS_OFFSET, 8);
//		bus_send_data(ptr[2], FPGA_DATA_IN_BUS_OFFSET + 8, 8);
//		bus_send_data(ptr[1], FPGA_DATA_IN_BUS_OFFSET + 16, 8);
//		portB->ovrt = 1<<19;
//		ptr += 4;
//	}
//
//	close(fd);
//}
//
//int main(void)
//{
//    pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);
//    if (pcl_configure_clocks(&pcl_freq_param) != PASS) {
//            LED_On(LED0); LED_On(LED1);
//            LED_On(LED2); LED_On(LED3);
//            while(1);
//    }
//
//    smc_init(PBA_SPEED);
//
//    gpio_enable_gpio_pin(FPGA_IN_00); // data 0
//    gpio_enable_gpio_pin(FPGA_IN_01);
//    gpio_enable_gpio_pin(FPGA_IN_02);
//    gpio_enable_gpio_pin(FPGA_IN_03);
//    gpio_enable_gpio_pin(FPGA_IN_04);
//    gpio_enable_gpio_pin(FPGA_IN_05);
//    gpio_enable_gpio_pin(FPGA_IN_06);
//    gpio_enable_gpio_pin(FPGA_IN_07); // data 7
//    gpio_enable_gpio_pin(FPGA_IN_08); // data 8
//    gpio_enable_gpio_pin(FPGA_IN_09);
//    gpio_enable_gpio_pin(FPGA_IN_10);
//    gpio_enable_gpio_pin(FPGA_IN_11);
//    gpio_enable_gpio_pin(FPGA_IN_12);
//    gpio_enable_gpio_pin(FPGA_IN_13);
//    gpio_enable_gpio_pin(FPGA_IN_14);
//    gpio_enable_gpio_pin(FPGA_IN_15); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_16); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_17); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_18); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_19); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_20); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_21); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_22); // data 15
//    gpio_enable_gpio_pin(FPGA_IN_23); // data 15
//    gpio_enable_gpio_pin(FPGA_IO_CTRL); // ack line
//    gpio_enable_gpio_pin(FPGA_IN_24); // data ready
//    gpio_enable_gpio_pin(FPGA_IN_26); // state 0
//    gpio_enable_gpio_pin(FPGA_IN_27);
//    gpio_enable_gpio_pin(FPGA_IN_28); // state 2
//
//	mmc_init();
//	while (mmc_status() != CTRL_GOOD);
//	b_fsaccess_init();
//
//	timer_init();
//
//	read_fs_file();
//
//	data_blk_src_t src;
//	if (data_file_parse("A:/data.cfg", &src) == 0) {
//		read_sd_directly(src.block_addr, src.frame_count, src.target_fps);
//	} else {
//		read_sd_directly(200000, 6000, 1000);
//	}
//	while(1);
//}
