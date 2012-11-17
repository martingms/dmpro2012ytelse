//#include <string.h>
//#include <stdio.h>
//#include "compiler.h"
//#include "board.h"
//#include "power_clocks_lib.h"
//#include "gpio.h"
//#include "intc.h"
//
//#include "rtc.h"
//#include "led.h"
//
//#include <avr32/io.h>

//void led_test(void) {
//	timer_init();
//
//	// all blinking
//	int i;
//	for(i=0;i<12;i++) {
//		LED_Toggle((1<<LED_COUNT)-1);
//		timer_sleep(250);
//	}
//
//	// "running up an down"
//	for(i=0;i<128;i++) {
//		int j = (i % 16) > 7 ? (15 - (i%16)) : (i%8);
//		LED_Off((1<<LED_COUNT)-1);
//		LED_On(1<<j);
//
//		timer_sleep(100);
//	}
//}
