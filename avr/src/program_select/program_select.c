#include "program_select.h"
#include "screen.h"
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

// STRINGS AND ARRAY MAXIMUMS
#define N_FILES_MAX_DIGITS 					20
#define SCRIPT_TRANSFER_DELAY_MAX_LENGTH 	16
#define DEFAULT_STRING_MAX_LENGTH 			256

// SCRIPT LINES
#define SCRIPT_LINE_DESCRIPTION 	0
#define SCRIPT_LINE_FPGA_BIN_PATH 	1
#define SCRIPT_LINE_DATA_TYPE_DIR 	2
#define SCRIPT_LINE_TRANSFER_DELAY 	3



/*#define MAX_MENU_ITEMS 						64
struct menu_item {
	char name[DEFAULT_STRING_MAX_LENGTH];	// Name of menu item
	char file[DEFAULT_STRING_MAX_LENGTH];	// File path
} menu[MAX_MENU_ITEMS];
*/






struct script {
	char description[DEFAULT_STRING_MAX_LENGTH];
	char fpga_bin_path[DEFAULT_STRING_MAX_LENGTH];
	char data_type_directory[DEFAULT_STRING_MAX_LENGTH];
	int transfer_delay;
}selected_script;

char *selected_data_unit_path;

int current_state;
int menu_item_selected;
int menu_size;

bool busy;
bool reset;

void button_push(U8 button) {
	if (busy) return;

	if ((button & UP_BUTTON) && (menu_item_selected > 0)) {
		menu_item_selected--;
		//TODO refresh screen
	}
	if ((button & DOWN_BUTTON) && (menu_item_selected+1 < menu_size)) {
		menu_item_selected++;
		//TODO refresh screen
	}
	if (button & ENTER_BUTTON) {
		next_state();
	}
}

void program_select_start(void) {
	while (TRUE) {
		load_menu(STATE_SELECT_PROGRAM);
		button_reg_listener(&button_push);
		busy = FALSE;
		reset = FALSE;
		while (reset == FALSE);
	}
}

void load_menu(int state) {
	switch (state) {
		case STATE_SELECT_PROGRAM:
		{
			menu_item_selected = 0;
			load_screen_data(PROGRAM);
			break;
		}
		case STATE_SELECT_DATA:
		{
			menu_item_selected = 0;
			load_screen_data(DATA);
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
		rc = load_script(buffer);				// Sets the program script
		if (!rc) {
			load_menu(STATE_SELECT_DATA);
		}
		fb_iterator_terminate();
		return;
	}

	if (current_state == STATE_SELECT_DATA){
		fb_iterator_init(FS_DIR);
		fb_iterator_seek(menu_item_selected);
		buffer = fb_iterator_next();
		selected_data_unit_path = buffer;		// Sets the data directory
		run_fpga_program();
		fb_iterator_terminate();
	}
}

void run_fpga_program(void) {
	int i;
	char *buffer;
	#define PATH_SIZE strlen(selected_data_unit_path)
	busy = TRUE;

	fpga_send_program(selected_script.fpga_bin_path);

	if (PATH_SIZE > 0) {									// If there is data
		fb_iterator_init(FS_FILE);
		fb_cd(selected_data_unit_path);
		fb_iterator_set_ext(DATA_FILE_SUFFIX);
		while (fb_iterator_has_next()) {
			buffer = fb_iterator_next();
			char data_path[PATH_SIZE + N_FILES_MAX_DIGITS + 1 + strlen(buffer) + 1];
			sprintf(data_path, "%s.%s", selected_data_unit_path, buffer);

			fpga_send_data(data_path);						// Send data to FPGA
			fpga_run();										// Run FPGA (waits for ACK)
			usleep(selected_script.transfer_delay);			// Sleep
		}
	} else {
		fpga_run();											// No data -> just run
	}

	busy = FALSE;
	reset = TRUE; // Resets the AVR-program
}


int load_script(char *script_path) {
	char c_buffer;
	int i,fd,line;
	char delay_buffer[SCRIPT_TRANSFER_DELAY_MAX_LENGTH];

	// Open script file
	fd = open(script_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open script: %s\n", script_path);
		return fd;
	}

	// Read script file
	for (i=0, line=0; read(fd, &c_buffer, 1) > 0; ++i) {


		if (c_buffer == '\n') {
			line++;			// Go to next line in script file
			i=0; 			// Reset character counter
			continue;		// Skip to next byte
		}

		// Read lines in script file
		switch (line) {
			case SCRIPT_LINE_DESCRIPTION:
			{
				if (i < DEFAULT_STRING_MAX_LENGTH) {
				selected_script.description[i] = c_buffer;
				}
				seprintf("Part of description in script ignored (max %d characters). \n", DEFAULT_STRING_MAX_LENGTH);
				break;
			}
			case SCRIPT_LINE_FPGA_BIN_PATH:
			{
				if (i >= DEFAULT_STRING_MAX_LENGTH) {
					seprintf("Error: FPGA binary file path in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
					return -1;
				}
				selected_script.fpga_bin_path[i] = c_buffer;
				break;
			}
			case SCRIPT_LINE_DATA_TYPE_DIR:
			{
				if (i >= DEFAULT_STRING_MAX_LENGTH) {
					seprintf("Error: Data type path in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
					return -1;
				}
				selected_script.data_type_directory[i] = c_buffer;
				break;
			}
			case SCRIPT_LINE_TRANSFER_DELAY:
			{
				if (i >= DEFAULT_STRING_MAX_LENGTH) {
					seprintf("Error: Transfer delay in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
					return -1;
				}
				delay_buffer[i] = c_buffer;
			}
			default: // Unexpected line
			{
				seprintf("Warning: Unexpected line detected in script %s\n", script_path);
				goto no_more_lines; // Breaks out of for loop
			}
		}
	}
	no_more_lines:
	selected_script.transfer_delay = atoi(delay_buffer);
	return 0;
}

void test_load_script(char *path) {
	load_script(path);
	seprintf("Loaded contents of %s:", path);
	seprintf("Description: \t%s\n", selected_script.description);
	seprintf("FPGA bin path:\t%s\n", selected_script.fpga_bin_path);
	seprintf("Data type dir:\t%s\n", selected_script.data_type_directory);
	seprintf("Transfer delay:\t%d\n", selected_script.transfer_delay);
}
