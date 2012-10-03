
#ifndef DEBUG_INCLUDE_GUARD_H
#define DEBUG_INCLUDE_GUARD_H


static void (*debug_writer)(const char*) = 0;

void debug_init( void (*writer)(const char*) ) {
	debug_writer = writer;
}

void debug_write(const char *msg) {
	if (debug_writer != 0) {
		debug_writer(msg);
	}
}


#endif
