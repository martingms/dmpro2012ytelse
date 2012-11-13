#include "program_select.h"
#include "screen.h"
#include "script.h"
#include "button.h"
#include "fpga.h"
#include "serial.h"
#include "filebrowser.h"
#include "str2img.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fsaccess.h>
#include <string.h>

// PROGRAM STATES
#define STATE_SELECT_PROGRAM 	1
#define STATE_SELECT_DATA 		2
#define STATE_UPLOADING_PROGRAM 3
#define STATE_UPLOADING_DATA 	4

// BUTTON VALUES
#define UP_BUTTON 		1
#define DOWN_BUTTON 	2
#define ENTER_BUTTON 	4

char *selected_data_unit_path;

enum data_type current_type;
int current_state;
int menu_item_selected;
int menu_size;

volatile bool busy = TRUE;
volatile bool reset;

volatile U8 v_button;

/*
 * Program select starts here
 */
void program_select_start(void) {
	button_reg_listener(&button_push); 	// Set button listener
	while (TRUE) {
		load_menu(STATE_SELECT_PROGRAM); 	// Load menu
		busy = FALSE; 						// Start listening on buttons
		reset = FALSE;
		while (reset == FALSE){				// Wait for reset
			if ((v_button == UP_BUTTON) && (menu_item_selected > 0)) {
				screen_move_cursor(-1);
			}
			else if ((v_button == DOWN_BUTTON) && (menu_item_selected + 1 < menu_size)) {
				screen_move_cursor(1);
			}
			else if (v_button == ENTER_BUTTON) {
				next_state();
			} else continue;
			v_button = 0;

		}
		screen_display_error_message("slutten av program_select_start");
	}
}

/*
 * Button interrupt routine
 */
void button_push(U8 button) {
	v_button = button;
	return;


	if (busy) return;
	LED_On(button);

	if ((button == UP_BUTTON) && (menu_item_selected > 0)) {
		screen_move_cursor(-1);
	}
	if ((button == DOWN_BUTTON) && (menu_item_selected + 1 < menu_size)) {
		screen_move_cursor(1);
	}
	if (button == ENTER_BUTTON) {
		next_state();
		screen_display_error_message("Kommet ut av next_state");
	}
	LED_Off(button);
}

void set_file_type(enum data_type type);

/*
 * Load menu onto screen
 */
void load_menu(int state) {
	switch (state) {
	case STATE_SELECT_PROGRAM: {
		menu_item_selected = 0;
		set_file_type(PROGRAM);
		screen_load_data_to_bitmap(PROGRAM);
		break;
	}
	case STATE_SELECT_DATA: {
		menu_item_selected = 0;
		set_file_type(DATA);
		screen_load_data_to_bitmap(DATA);
		break;
	}
	default:
		return;
	}
	current_state = state;

	screen_draw_bitmap_on_screen();
}

//TODO midlertidig funksjon, brukes kun til testing
void send_selected_file(void) {
	fb_iterator_init(FS_FILE);				// Inits file iterator for files
	fb_iterator_seek(menu_item_selected);	// Seeks to selected item
	char *file = fb_iterator_next();
	char file_full[sizeof(file)+3];
	file_full[0] = 'A';
	file_full[1] = ':';
	file_full[2] = '/';
	file_full[3] = '\0';

	fpga_send_data_from_file(strcat(file_full, file));
	reset = TRUE;
	//screen_display_error_message("slutten av send_selected_file");
}

/*
 * Go to next state of program
 */
void next_state(void) {
	int rc;
	char *file;
	if (current_state == STATE_SELECT_PROGRAM) {
		//set_file_type(PROGRAM);
		fb_iterator_seek(menu_item_selected+1);	// Seeks to selected item TODO er seek 1-indeksert??
		file = fb_iterator_next();
		fb_iterator_terminate();
		char file_full[strlen(file)+3];
		file_full[0] = 'A';
		file_full[1] = ':';
		file_full[2] = '/';
		file_full[3] = '\0';
		rc = load_script(strcat(file_full, file)); // Tries to load the program script
		if (!rc) {
			//screen_display_error_messagef("Lines in selected script\n1. %s\n2. %s\n3. %s\n4. %d\n", selected_script.description, selected_script.fpga_bin_path, selected_script.data_type_directory, selected_script.transfer_delay);
			load_menu(STATE_SELECT_DATA);
		} else {
			screen_display_error_messagef("Could not load script\n%s\n", file_full);
		}
	}

	else if (current_state == STATE_SELECT_DATA) {

		//  	------------[TODO tmp, fjern]---------------
		//set_file_type(DATA);
		fb_iterator_terminate();
		fb_iterator_init(FS_FILE);					// Init for directories
		fb_iterator_set_ext(DATA_FILE_SUFFIX);		// Set extension
		fb_iterator_seek(menu_item_selected);
		char *file = fb_iterator_next();
		screen_display_error_messagef("selected %d\n%s\n", menu_item_selected, file);
		char file_full[strlen(file)+3];
		file_full[0] = 'A';
		file_full[1] = ':';
		file_full[2] = '/';
		file_full[3] = '\0';
		fpga_send_data_from_file(strcat(file_full, file));
		return;
		//  	--------------------------------------------

		fb_iterator_init(FS_DIR);
		fb_iterator_seek(menu_item_selected);
		file = fb_iterator_next();
		selected_data_unit_path = file; // Sets the data directory
		run_fpga_program();
		fb_iterator_terminate();
	}
	//screen_display_error_message("siste linje i next_state");
}

/*
 * Set file type to be displayed:
 * Program or data
 */
void set_file_type(enum data_type type) {
	fb_cd("A:/");	// Set directory

	// Initialize and set extension
	if (type == DATA) {
		fb_iterator_init(FS_DIR);					// Init for directories
		fb_iterator_set_ext(DATA_FILE_SUFFIX);		// Set extension

	} else if (type == PROGRAM) {
		fb_iterator_init(FS_FILE);					// Init for files
		fb_iterator_set_ext(SCRIPT_FILE_SUFFIX); 	// Set extension
	}

	// Count files
	menu_size = 0;
	while (fb_iterator_has_next()) {
		fb_iterator_next();
		menu_size++;
	}
	current_type = type;
}

/*
 * Final stage: run program on FPGA
 */
void run_fpga_program(void) {
#define PATH_SIZE strlen(selected_data_unit_path)
	char *buffer;
	//bool bmp;
	busy = TRUE; // Stop listening on buttons

	fpga_send_program(selected_script.fpga_bin_path); // Send program to FPGA

	if (PATH_SIZE > 0) { // If there is data
		fb_iterator_init(FS_FILE);
		fb_cd(selected_data_unit_path);
		fb_iterator_set_ext("*");
		while (fb_iterator_has_next()) {
			buffer = fb_iterator_next();
			char data_path[PATH_SIZE + N_FILES_MAX_DIGITS + 1 + strlen(buffer) + 1];
			sprintf(data_path, "%s%s", selected_data_unit_path, buffer);

			// Determines if BMP file
			/*char *suffix = strchr(buffer, '.');
			suffix++; //skips '.'
			if (!strcmp(suffix, BMP_FILE_SUFFIX)) 	bmp = true;		//TODO bmp brukes ikke
			else 									bmp = false;*/

			fpga_send_data_from_file(data_path); // Send data to FPGA
			fpga_run(); // Run FPGA (waits for ACK)
			volatile int i = selected_script.transfer_delay;
			while (i--);		// Sleeps
		}
	} else {
		fpga_run(); // No data -> just run
	}

	busy = FALSE;
	reset = TRUE; // Resets the AVR-program
}

