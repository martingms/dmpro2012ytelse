#ifndef SCREEN_H_
#define SCREEN_H_

#include "compiler.h"

#define PICTURE_SIZE 320*240

#define screen_display_error_messagef(...)\
{\
	static char sprintf_buf[256];\
	sprintf(sprintf_buf, __VA_ARGS__);\
	screen_display_error_message(sprintf_buf);\
}

#define screen_printf(...)\
{\
	static char sprintf_buf[256];\
	sprintf(sprintf_buf, __VA_ARGS__);\
	str2img_write(sprintf_buf);\
	screen_draw_bitmap_on_screen();\
}

// SCREEN LIMITS
#define SCREEN_ITEMS_OFFSET 2
#define SCREEN_MAX_ITEMS 	11
#define SCREEN_HEIGHT 		SCREEN_MAX_ITEMS + 4
#define SCREEN_MAX_WIDTH 	40

enum data_type {DATA, PROGRAM};

void screen_display_error_message(char *message);
void screen_make_bitmap_from_buffer();
void screen_draw_bitmap_on_screen(void);
void screen_load_data_to_bitmap(enum data_type type);
void screen_move_cursor(S8 direction);

#endif
