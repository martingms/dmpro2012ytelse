
#ifndef DEBUG_INCLUDE_GUARD_H
#define DEBUG_INCLUDE_GUARD_H


void debug_init( void (*writer)(const char*) );
void debug_write(const char*);


#endif
