#include "screen.h"
#include "program_select.h"
#include "script.h"
#include "str2img.h"
#include "filebrowser.h"
#include "fpga.h"
#include <unistd.h>

// SCREEN LIMITS
#define SCREEN_ITEMS_OFFSET 2
#define SCREEN_MAX_ITEMS 	11
#define SCREEN_HEIGHT 		SCREEN_MAX_ITEMS + 4
#define SCREEN_MAX_WIDTH 	40

// SCREEN STRINGS
#define SCREEN_LINE_SELECT_PROGRAM 		"|----------[ SELECT PROGRAM ]----------|"
#define SCREEN_LINE_SELECT_DATA			"|-----------[ SELECT DATA ]------------|"
#define SCREEN_LINE_ERROR				"|--------------[ ERROR! ]--------------|"
#define SCREEN_LINE_BOTTOM				"|--------------------------------------|"
#define SCREEN_LINE_MORE_DATA			"                               more...  "
#define SCREEN_LINE_EMPTY				"                                        "
#define SCREEN_PREFIX_ITEM				' '
#define SCREEN_PREFIX_SELECTED_ITEM 	'*'


char screen[SCREEN_MAX_ITEMS+4][SCREEN_MAX_WIDTH];

struct set {
	int first;
	int last;
} visible_items;

extern int menu_item_selected;
enum data_type current_type;

void screen_display_error_message(char *message) {
#define ERROR_MESSAGE_TIMEOUT 10000
	str2img_clear();
	str2img_writeline(SCREEN_LINE_ERROR);
	str2img_writeline(SCREEN_LINE_EMPTY);
	str2img_write(message);
	screen_draw_bitmap_on_screen();

	usleep(ERROR_MESSAGE_TIMEOUT);

	screen_make_bitmap_from_buffer();
	screen_draw_bitmap_on_screen();
}

void screen_make_bitmap_from_buffer() {
	int i;
	str2img_clear();
	for (i= 0; i < SCREEN_HEIGHT; ++i) {
		str2img_writeline(screen[i]);
	}
}

void screen_draw_bitmap_on_screen(void) {
#define SIZE 320*240 //TODO usikker på størrelsen

	//fpga_send_program(char *program_path); TODO program for å vise bilde
	U8 buffer[SIZE];
	str2img_read_block(buffer);
	fpga_send_data_from_memory(buffer, SIZE);
}

/**
 * Moves the cursor by manipulating the current bitmap
 */
void screen_move_cursor(S8 direction) {
	int prev_sel = menu_item_selected;
	menu_item_selected += direction;

	if (menu_item_selected >= visible_items.first && menu_item_selected <= visible_items.last) {
		str2img_set_cursor(SCREEN_ITEMS_OFFSET + prev_sel, 0);
		str2img_putc(SCREEN_PREFIX_ITEM);

		str2img_set_cursor(SCREEN_ITEMS_OFFSET + menu_item_selected, 0);
		str2img_putc(SCREEN_PREFIX_SELECTED_ITEM);
	}
	else {
		screen_load_data_to_buffer(current_type);
		screen_make_bitmap_from_buffer();
	}
	screen_draw_bitmap_on_screen();
}

void screen_load_data_to_buffer(enum data_type type) {
	int i,j,start,rc;
	char buffer[SCREEN_MAX_WIDTH];
	current_type = type;

	// Initialize, set extension, set first line of screen
	if (type == DATA) {
		fb_iterator_init(FS_DIR);														// Init for directories
		fb_iterator_set_ext(DATA_FILE_SUFFIX);											// Set extension
		memcpy(screen[0], SCREEN_LINE_SELECT_DATA, strlen(SCREEN_LINE_SELECT_DATA));	// Set top line of screen

	} else if (type == PROGRAM) {
		fb_iterator_init(FS_FILE);															// Init for files
		fb_iterator_set_ext("");															// Set extension TODO?
		memcpy(screen[0], SCREEN_LINE_SELECT_PROGRAM, strlen(SCREEN_LINE_SELECT_PROGRAM));	// Set top line of screen
	}

	fb_cd("A:/");	// Set directory



	// Determine scroll
	if (menu_item_selected >= SCREEN_MAX_ITEMS) {			// More data above
		visible_items.first = menu_item_selected - SCREEN_MAX_ITEMS +1;	// Scroll
		memcpy(screen[1], SCREEN_LINE_MORE_DATA, strlen(SCREEN_LINE_MORE_DATA));

	} else {												// No data above
		visible_items.first = 0;											// No scroll
		memcpy(screen[1], SCREEN_LINE_EMPTY, strlen(SCREEN_LINE_EMPTY));
	}

	// Seek to the first file
	rc = fb_iterator_seek(start);
	if (rc) {
		screen_display_error_message("Error, could not seek to file");
	}

	// Gets file names
	for (i=SCREEN_ITEMS_OFFSET, j=visible_items.first; i < SCREEN_MAX_ITEMS; ++i, ++j) {
		if (fb_iterator_has_next()) {
			if (j == menu_item_selected) {				// Adds prefix
				buffer[0] = SCREEN_PREFIX_SELECTED_ITEM;
			} else {
				buffer[0] = SCREEN_PREFIX_ITEM;
			}
			buffer[1] = ' ';
			buffer[2] = '\0';

			strcat(buffer, fb_iterator_next());			// Adds file name
			memcpy(screen[i], buffer, SCREEN_MAX_WIDTH);

		} else {		// No more files
			memcpy(screen[i], SCREEN_LINE_EMPTY, sizeof(SCREEN_LINE_EMPTY));
		}
	}

	visible_items.last = j;

	// Sets bottom of screen
	if (fb_iterator_has_next())		// More data below
		memcpy(screen[SCREEN_HEIGHT - 2], SCREEN_LINE_MORE_DATA, sizeof(SCREEN_LINE_MORE_DATA));
	else							// No more data below
		memcpy(screen[SCREEN_HEIGHT - 2], SCREEN_LINE_EMPTY, sizeof(SCREEN_LINE_EMPTY));

	memcpy(screen[SCREEN_HEIGHT -1], SCREEN_LINE_BOTTOM, sizeof(SCREEN_LINE_BOTTOM));

	fb_iterator_terminate();
}
