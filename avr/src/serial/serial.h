#ifndef SERIAL_INCLUDE_GUARD_H
#define SERIAL_INCLUDE_GUARD_H

#include "usart.h"
#include "compiler.h"

// Initializes the USART subsystem, selects USART as
// the GPIO function of choice. Selects baud rate and RS232
// as the protocol to use.
int serial_init();

// writes a string to serial port
void serial_write(const char *msg);

// writes a single character
void serial_putc(const char c);

// blocking "get character" function
char serial_getc();

// test if usart subsystem is ready for use
int serial_ready();

#endif
