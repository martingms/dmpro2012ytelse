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
	INTC_register_interrupt(&rtc_irq, AVR32_RTC_IRQ, AVR32_INTC_INT0);
	if (!rtc_init(&AVR32_RTC, RTC_OSC_RC, TIMER_PSEL)) {
		LED_On(LED7);LED_On(LED6);LED_On(LED5);LED_On(LED4);LED_On(LED3);
		while(1);
	}

	rtc_set_top_value(&AVR32_RTC, 0);
	rtc_enable_interrupt(&AVR32_RTC);
	rtc_enable(&AVR32_RTC);
}

// gets time time in milliseconds since initialization
double timer_get_ms() {
	return 1000.0 * irq_counter / TICKS_PER_SEC;
}

void timer_reset() {
	irq_counter = 0;
}
