
#ifndef DEBUG_INCLUDE_GUARD_H
#define DEBUG_INCLUDE_GUARD_H


// register a specified function as the "writer" function
// that will subsequently be used when debug_write is called.
// typically, debug_init will take the serial_write function
// defined in "serial/serial.h" as argument
void debug_init( void (*writer)(const char*) );

// calls the function specified in debug_init, and sends the
// argument string to said function.
void debug_write(const char*);


#endif
