#include "screen.h"
#include "program_select.h"
#include "script.h"
#include "str2img.h"
#include "filebrowser.h"
#include "fpga.h"
#include <unistd.h>
#include "sram.h"
#include "button.h"


// SCREEN STRINGS
#define SCREEN_LINE_SELECT_PROGRAM 		"|----------[ SELECT PROGRAM ]----------|"
#define SCREEN_LINE_SELECT_DATA			"|-----------[ SELECT DATA ]------------|"
#define SCREEN_LINE_ERROR				"|--------------[ ERROR! ]--------------|"
#define SCREEN_LINE_BOTTOM				"|--------------------------------------|"
#define SCREEN_LINE_MORE_DATA			"                               more...  "
#define SCREEN_LINE_EMPTY				"                                        "
#define SCREEN_PREFIX_ITEM				' '
#define SCREEN_PREFIX_SELECTED_ITEM 	'*'

#define FPGA_PROGRAM_SHOW_PICTURE		"A:/show_picture.fpga" //TODO ugyldig definisjon

char *screen = SCREEN_INFO;

struct set {
	int first;
	int last;
} visible_items;

extern int menu_item_selected;
enum data_type current_type;

volatile bool halt;
void wait_for_click(U8 b) {
	halt = FALSE;
}

void screen_display_error_message(char *message) {
	str2img_clear();
	str2img_writeline(SCREEN_LINE_ERROR);
	str2img_writeline(SCREEN_LINE_EMPTY);
	str2img_write(message);
	str2img_write("\n\n");
	str2img_write("Push any button to continue...");

	screen_draw_bitmap_on_screen();

	button_set_tmp_listener(&wait_for_click);
	halt = TRUE;
	while (halt);	// Wait for click
	LED_On(LED7);
	button_remove_tmp_listener();

	screen_make_bitmap_from_buffer();
	screen_draw_bitmap_on_screen();
}

void screen_make_bitmap_from_buffer() {
	int i;
	str2img_clear();
	for (i= 0; i < SCREEN_HEIGHT; ++i) {
		str2img_writeline(screen + i*SCREEN_MAX_WIDTH);
	}
}

#define BUFFER_ADRESS (SRAM + STR2IMG_BUFFER_SIZE)
void screen_draw_bitmap_on_screen(void) {
	//fpga_send_program(FPGA_PROGRAM_SHOW_PICTURE); TODO
	U8 *buffer = BUFFER_ADRESS;
	str2img_read_block(buffer);
	fpga_send_data_from_memory(buffer, PICTURE_SIZE);
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

	screen_draw_bitmap_on_screen();
}

void screen_load_data_to_bitmap(enum data_type type) {
	int i,j,start,rc;
	//char buffer[SCREEN_MAX_WIDTH];
	current_type = type;

	start = 0; //TODO

	// Clear screen
	str2img_clear();
	str2img_set_cursor(0,0);

	// Set top line of screen
	if (type == DATA) {
		str2img_write(SCREEN_LINE_SELECT_DATA);
	} else if (type == PROGRAM) {
		str2img_write(SCREEN_LINE_SELECT_PROGRAM);
	}

	// Determine scroll
	if (menu_item_selected >= SCREEN_MAX_ITEMS) {			// More data above
		visible_items.first = menu_item_selected - SCREEN_MAX_ITEMS +1;	// Scroll
		str2img_write(SCREEN_LINE_MORE_DATA);
	} else {												// No data above
		visible_items.first = 0;											// No scroll
		str2img_write(SCREEN_LINE_EMPTY);
	}

	// Seek to the first file
	rc = fb_iterator_seek(start);
	if (rc) {
		screen_printf("Error, could not seek to file, return code is %d\n", rc);
	}

	// Gets file names and write them to bmp
	for (i=0, j=visible_items.first; i < SCREEN_MAX_ITEMS; ++i, ++j) {
		if (fb_iterator_has_next()) {
			if (j == menu_item_selected) {				// Adds prefix
				str2img_putc(SCREEN_PREFIX_SELECTED_ITEM);
			} else {
				str2img_putc(SCREEN_PREFIX_ITEM);
			}
			str2img_putc(' ');
			str2img_writeline(fb_iterator_next());

		} else {		// No more files
			str2img_write(SCREEN_LINE_EMPTY);
		}
	}

	visible_items.last = j;

	// Sets bottom of screen
	if (fb_iterator_has_next()){		// More data below
		str2img_write(SCREEN_LINE_MORE_DATA);
	} else {							// No more data below
		str2img_write(SCREEN_LINE_EMPTY);
	}
	str2img_write(SCREEN_LINE_BOTTOM);
	fb_iterator_terminate();
}
