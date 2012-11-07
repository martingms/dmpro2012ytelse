#include "program_select.h"
#include "screen.h"
#include "script.h"
#include "button.h"
#include "fpga.h"
#include "serial.h"
#include "filebrowser.h"

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

int current_state;
int menu_item_selected;
int menu_size;

bool busy;
bool reset;

void program_select_start(void) {
	while (TRUE) {
		load_menu(STATE_SELECT_PROGRAM); 	// Load menu
		button_reg_listener(&button_push); 	// Set button listener
		busy = FALSE; 						// Start listening on buttons
		reset = FALSE;
		while (reset == FALSE); 			// Wait for reset
	}
}

void button_push(U8 button) {
	if (busy) return;

	if ((button & UP_BUTTON) && (menu_item_selected > 0)) {
		screen_move_cursor(-1);
	}
	if ((button & DOWN_BUTTON) && (menu_item_selected + 1 < menu_size)) {
		screen_move_cursor(1);
	}
	if (button & ENTER_BUTTON) {
		next_state();
	}
}

void load_menu(int state) {
	switch (state) {
	case STATE_SELECT_PROGRAM: {
		menu_item_selected = 0;
		screen_load_data_to_buffer(PROGRAM);
		break;
	}
	case STATE_SELECT_DATA: {
		menu_item_selected = 0;
		screen_load_data_to_buffer(DATA);
		break;
	}
	default:
		return;
	}
	current_state = state;

}

void next_state(void) {
	int rc;
	char *buffer;
	if (current_state == STATE_SELECT_PROGRAM) {
		fb_iterator_init(FS_FILE);
		fb_iterator_seek(menu_item_selected);
		buffer = fb_iterator_next();
		rc = load_script(buffer); // Sets the program script
		fb_iterator_terminate();
		if (!rc) {
			load_menu(STATE_SELECT_DATA);
		}
		return;
	}

	if (current_state == STATE_SELECT_DATA) {
		fb_iterator_init(FS_DIR);
		fb_iterator_seek(menu_item_selected);
		buffer = fb_iterator_next();
		selected_data_unit_path = buffer; // Sets the data directory
		run_fpga_program();
		fb_iterator_terminate();
	}
}

void run_fpga_program(void) {
#define PATH_SIZE strlen(selected_data_unit_path)
	char *buffer;
	bool bmp;
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
			char *suffix = strchr(buffer, '.');
			suffix++; //skips '.'
			if (!strcmp(suffix, BMP_FILE_SUFFIX)) 	bmp = true;
			else 									bmp = false;

			fpga_send_data_from_file(data_path, bmp); // Send data to FPGA
			fpga_run(); // Run FPGA (waits for ACK)
			usleep(selected_script.transfer_delay); // Sleep
		}
	} else {
		fpga_run(); // No data -> just run
	}

	busy = FALSE;
	reset = TRUE; // Resets the AVR-program
}

