#ifndef SCREEN_H_
#define SCREEN_H_

#include "compiler.h"

#define screen_display_error_messagef(...)\
{\
	static char sprintf_buf[256];\
	sprintf(sprintf_buf, __VA_ARGS__);\
	screen_display_error_message(sprintf_buf);\
}

enum data_type {DATA, PROGRAM};

void screen_display_error_message(char *message);
void screen_make_bitmap_from_buffer();
void screen_draw_bitmap_on_screen(void);
void screen_load_data_to_buffer(enum data_type type);
void screen_move_cursor(S8 direction);

#endif
