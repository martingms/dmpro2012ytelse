#include "compiler.h"
#include "board.h"
#include "power_clocks_lib.h"
#include "rtc.h"
#include "intc.h"
#include "led.h"

#include "timer.h"

static volatile unsigned int irq_counter;

__attribute__((__interrupt__))
static void rtc_irq(void) {
	irq_counter++;
	rtc_clear_interrupt(&AVR32_RTC);
}

// should be called after Disable_global_interrupt
// and INTC_init_interrupt, before Enable_global_interrupt
void timer_init() {
//	INTC_register_interrupt(&rtc_irq, AVR32_RTC_IRQ, AVR32_INTC_INT0);
	if (!rtc_init(&AVR32_RTC, RTC_OSC_RC, TIMER_PSEL)) {
		LED_On(LED7);LED_On(LED6);LED_On(LED5);LED_On(LED4);LED_On(LED3);
		while(1);
	}

//	rtc_set_top_value(&AVR32_RTC, 0);
//	rtc_enable_interrupt(&AVR32_RTC);
	rtc_enable(&AVR32_RTC);
}

// gets time in milliseconds since initialization
double timer_get_ms() {
	return 1000.0 * rtc_get_value(&AVR32_RTC) / TICKS_PER_SEC;
//	return 1000.0 * irq_counter / TICKS_PER_SEC;
}

void timer_reset() {
	rtc_set_value(&AVR32_RTC, 0);
	irq_counter = 0;
}

void timer_sleep(int ms) {
	if (ms <= 0)
		return;

	int tick_diff = ms * TICKS_PER_SEC / 1000;
	int start = rtc_get_value(&AVR32_RTC);
	while (rtc_get_value(&AVR32_RTC) - start < tick_diff);
//	while (irq_counter - start < tick_diff);
}
