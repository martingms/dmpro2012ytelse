#include "program_select.h"
#include "button.h"
#include "fpga.h"
#include "serial.h"

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

// FILE SUFFIXES
#define DATA_FILE_SUFFIX 	".lenna"
#define SCRIPT_FILE_SUFFIX 	".script"

// STRINGS AND ARRAY MAXIMUMS
#define N_FILES_MAX_DIGITS 					20
#define SCRIPT_TRANSFER_DELAY_MAX_LENGTH 	16
#define DEFAULT_STRING_MAX_LENGTH 			256


// SCRIPT LINES
#define SCRIPT_LINE_DESCRIPTION 	0
#define SCRIPT_LINE_FPGA_BIN_PATH 	1
#define SCRIPT_LINE_DATA_TYPE_DIR 	2
#define SCRIPT_LINE_TRANSFER_DELAY 	3

// SCREEN STRINGS
#define SCREEN_LINE_SELECT_PROGRAM 		"|-----[ SELECT PROGRAM ]-----|\n"
#define SCREEN_LINE_SELECT_DATA			"|------[ SELECT DATA ]-------|\n"
#define SCREEN_LINE_BOTTOM				"|----------------------------|\n"
#define SCREEN_LINE_MORE_DATA			"                     more...  \n"
#define SCREEN_LINE_EMPTY				"                              \n"
#define SCREEN_PREFIX_ITEM				"  "
#define SCREEN_PREFIX_SELECTED_ITEM 	"* "

// SCREEN LIMITS
#define SCREEN_MAX_ITEMS 15 //TODO
#define SCREEN_MAX_WIDTH 15 //TODO


/*#define MAX_MENU_ITEMS 						64
struct menu_item {
	char name[DEFAULT_STRING_MAX_LENGTH];	// Name of menu item
	char file[DEFAULT_STRING_MAX_LENGTH];	// File path
} menu[MAX_MENU_ITEMS];
*/


char screen[SCREEN_MAX_ITEMS+4][SCREEN_MAX_WIDTH+1];

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

void draw_screen() {
	#define SCREEN_TOTAL_SIZE (SCREEN_MAX_ITEMS+4) * SCREEN_MAX_WIDTH+1
	int i;
	char buffer[SCREEN_TOTAL_SIZE];
	for (i= 0; i < SCREEN_MAX_ITEMS+4; ++i) {
		strncat(buffer, screen[i], SCREEN_MAX_WIDTH);
	}

	// send til bitmap-generator
	// send til FPGA

}

void load_programs() {
	int i,j;
	bool data_above = FALSE;
	bool data_below = FALSE;

	memcpy(screen[0], SCREEN_LINE_SELECT_PROGRAM, strlen(SCREEN_LINE_SELECT_PROGRAM));

	for (i=0; i < SCREEN_MAX_ITEMS; ++i) {
		for (j = 0; j < SCREEN_MAX_WIDTH; ++j) {
			//TODO hent filnavn
		}
	}
	if (data_above)
		memcpy(screen[1], SCREEN_LINE_MORE_DATA, strlen(SCREEN_LINE_MORE_DATA));
	else
		memcpy(screen[1], SCREEN_LINE_EMPTY, strlen(SCREEN_LINE_EMPTY));

	if (data_below)
		memcpy(screen[SCREEN_MAX_WIDTH], SCREEN_LINE_MORE_DATA, strlen(SCREEN_LINE_MORE_DATA));
	else
		memcpy(screen[SCREEN_MAX_WIDTH], SCREEN_LINE_EMPTY, strlen(SCREEN_LINE_EMPTY));

	memcpy(screen[SCREEN_MAX_WIDTH+1], SCREEN_LINE_BOTTOM, strlen(SCREEN_LINE_BOTTOM));
}

void load_menu(int state) {
	switch (state) {
		case STATE_SELECT_PROGRAM:
		{
			menu_item_selected = 0;
			//TODO finn alle .script og list dem opp
			break;
		}
		case STATE_SELECT_DATA:
		{
			menu_item_selected = 0;
			//TODO finn alle mapper i root og list dem opp
			break;
		}
		case STATE_UPLOADING_PROGRAM:
		{
			//TODO skriv til skjermen "Loading program..."
			seprintf("Loading program...\n");
			break;
		}
		case STATE_UPLOADING_DATA:
		{
			//TODO skriv til skjermen "Loading data..."
			seprintf("Loading data...\n");
			break;
		}
		default:
			return;
	}
	current_state = state;

}

void next_state(void) {
	int rc;
	if (current_state == STATE_SELECT_PROGRAM) {
		//rc = load_script(menu[menu_item_selected].file); //TODO hent script path
		if (!rc) {
			load_menu(STATE_SELECT_DATA);
		}
		return;
	}

	if (current_state == STATE_SELECT_DATA){
		//selected_data_unit_path = menu[menu_item_selected].file; //TODO hent path
		run_fpga_program();
	}
}

void run_fpga_program(void) {
	#define PATH_SIZE strlen(selected_data_unit_path)
	busy = TRUE;

	load_menu(STATE_UPLOADING_PROGRAM);
	fpga_send_program(selected_script.fpga_bin_path);

	int i;
	int n_data_files = 0; 									//TODO finn antall data-filer i pathen!

	if (PATH_SIZE > 0) {									// If there is data
		for (i = 0; i < n_data_files; ++i) {
			load_menu(STATE_UPLOADING_DATA);
			char data_path[PATH_SIZE + N_FILES_MAX_DIGITS + strlen(DATA_FILE_SUFFIX)]; //TODO Finn en lur måte å finne N_FILES_MAX_DIGITS
			sprintf(data_path, "%s%d%s", selected_data_unit_path, i, DATA_FILE_SUFFIX);
			fpga_send_data(data_path);						// Send data to FPGA
			fpga_run();										// Run FPGA (waits for ACK)
			usleep(selected_script.transfer_delay);			// Sleep
		}
	} else {
		fpga_run();											// Fuck the system
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
				if (i >= DEFAULT_STRING_MAX_LENGTH) {
					seprintf("Error: Description in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
					return -1;
				}
				selected_script.description[i] = c_buffer;
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
