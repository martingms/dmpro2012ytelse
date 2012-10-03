#ifndef SERIAL_INCLUDE_GUARD_H
#define SERIAL_INCLUDE_GUARD_H

#include "usart.h"
#include "compiler.h"

int serial_init();
void serial_write(const char *msg);
void serial_putc(const char c);
char serial_getc();
int serial_ready();

#endif
