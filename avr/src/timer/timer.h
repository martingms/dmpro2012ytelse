#ifndef TIMER_H_GUARD
#define TIMER_H_GUARD

#define TIMER_PSEL 4
#define TICKS_PER_SEC 3594

void timer_init();
double timer_get_ms();
void timer_reset();
void timer_sleep(int ms);

#endif
