#include "program_select.h"
#include "screen.h"
#include "script.h"
#include "button.h"
#include "fpga.h"
#include "serial.h"
#include "filebrowser.h"
#include "str2img.h"
#include "timer.h"
#include "sram.h"
#include "bus.h"
#include "gpio.h"
#include "sd_mmc_spi.h"
#include "mmc.h"

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

#define ROOT_DIRECTORY "A:/"

#define FPGA_PROGRAM_SHOW_PICTURE	"A:/show_video.bin"

enum data_type current_type;
int current_state;
int menu_item_selected;
int menu_size;
char selected_program[DEFAULT_STRING_MAX_LENGTH];

volatile bool busy = TRUE;
volatile bool reset;

// any button click during movie playback should resend program + data
static volatile int send_in_progress = FALSE;
static volatile int restart_send = FALSE;

volatile U8 v_button;

/*
 * Program select starts here
 */
void program_select_start(void) {

	button_reg_listener(&button_push); 	// Set button listener
	while (TRUE) {
		LED_Off(0xff);
		fpga_send_program(FPGA_PROGRAM_SHOW_PICTURE);
		load_menu(STATE_SELECT_PROGRAM); 	// Load menu
		busy = FALSE; 						// Start listening on buttons
		reset = FALSE;
		while (reset == FALSE){				// Wait for reset
			if (v_button == 0) continue;

			if (v_button == UP_BUTTON) {
				if (menu_item_selected == 0) {
					screen_move_cursor(menu_size - 1);
				} else {
					screen_move_cursor(-1);
				}
			}
			else if (v_button == DOWN_BUTTON) {
				if (menu_item_selected == (menu_size - 1)) {
					screen_move_cursor(1 - menu_size);
				} else {
					screen_move_cursor(1);
				}
			}
			else if (v_button == ENTER_BUTTON) {
				next_state();
			}
			v_button = 0;

		}
	}
}

/*
 * Button interrupt routine
 */
void button_push(U8 button) {
	static double last_btn_click_time = -1000;

	// to prevent "double clicks"
	if (timer_get_ms() - last_btn_click_time > 200) {
		v_button = button;
		LED_Toggle(LED1);

		if (send_in_progress/* && button == ENTER_BUTTON*/) {
			restart_send = TRUE;
		}
	}
	last_btn_click_time = timer_get_ms();
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
}

/*
 * Go to next state of program
 */
void next_state(void) {
	//int rc;
	char *file;

	// Load script and go to the select data screen
	if (current_state == STATE_SELECT_PROGRAM) {
		//set_file_type(PROGRAM);
		fb_iterator_seek(menu_item_selected);	// Seeks to selected item
		file = fb_iterator_next();
		//fb_iterator_terminate();
		selected_program[0] = 'A';
		selected_program[1] = ':';
		selected_program[2] = '/';
		selected_program[3] = '\0';
		strcat(selected_program, file);
		load_menu(STATE_SELECT_DATA);

	}

	// Load data, run FPGA and reset
	else if (current_state == STATE_SELECT_DATA) {
		//set_file_type(DATA);
		fb_iterator_seek(menu_item_selected);
		file = fb_iterator_next();	// Select file

		char file_full[strlen(file)+4];
		file_full[0] = 'A';
		file_full[1] = ':';
		file_full[2] = '/';
		file_full[3] = '\0';
		strcat(file_full, file);

		data_blk_src_t data_info;
		if (data_file_parse(file_full, &data_info) == 0) {
			while (1) {
				do {
					restart_send = FALSE;
					run_fpga_program_from_sd(&data_info);
				} while (restart_send);

				// don't restart if one frame
				if (data_info.frame_count == 1) {

					// because we're in state stop if frame count == 1
					fpga_set_state(FPGA_STATE_RUN);

					// wait for user to restart
					send_in_progress = TRUE; // need to be in a state where restart_send is changed
					while (!restart_send);
					send_in_progress = FALSE;
				}
			}

		} else {
			screen_display_error_messagef("Could not parse data file %s", file_full);
		}
		reset = TRUE;
	}
}

/*
 * Set file type to be displayed:
 * Program or data
 */
void set_file_type(enum data_type type) {
	// Wait for SD card
	while (mmc_status() != CTRL_GOOD);

	int rc=fb_cd(ROOT_DIRECTORY);	// Set directory
	if (rc) screen_display_error_messagef(" Could not change directory to %s\n return code is %d\n", ROOT_DIRECTORY,rc);

	// Initialize and set extension
	if (type == DATA) {
		rc=fb_iterator_init(FS_FILE);					// Init for files
		if (rc) LED_On(LED0|LED1|LED2|LED3);
		fb_iterator_set_ext(DATA_FILE_SUFFIX);		// Set extension
		if (rc) LED_On(LED0|LED1|LED2|LED3);

	} else if (type == PROGRAM) {
		rc=fb_iterator_init(FS_FILE);					// Init for files
		if (rc) LED_On(LED0|LED1|LED2|LED3);
		rc=fb_iterator_set_ext(LENA_EXECUTABLE_SUFFIX); 	// Set extension
		if (rc) LED_On(LED0|LED1|LED2|LED3);
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
 * Final stage: Run FPGA program with data from outside FAT
 */
const char *osd(int i, int num_frames) {
	if (num_frames < 2)
		return NULL;

	// used for FPS counter
	static double last_time = 0;
	static double total_time = 0;

//	static char txt[80];
	static char txt[5];

	str2img_osd_reset();
	str2img_osd_set_cursor(0, 33);
	//str2img_osd_set_cursor(0, 36);
	double time = timer_get_ms();
//	sprintf(txt, "FPS %2.2f [ETA %ds]\n", 1000.0 / (time - last_time),
//			(int)((total_time / i) * (num_frames - i) / 1000));
	sprintf(txt, "%2.1f", 1000.0 / (time - last_time));
	str2img_osd_write(txt);

	total_time += time - last_time;
	last_time = time;

	return txt;
}
void fps_limit(double target_ms) {
	static double fps_limit = 0;

	double t = timer_get_ms();
	timer_sleep(target_ms - (t - fps_limit));
	fps_limit = timer_get_ms();
}
/*
 * Run FPGA program with data from SD
 */
void run_fpga_program_from_sd(data_blk_src_t *data_info) {
	// stop listening on buttons
	busy = TRUE;

	// tell button listener that we're busy
	send_in_progress = TRUE;

	// where to put OSD
	str2img_osd_init(FRAME_BUFFER);

	// send the program
	fpga_send_program(selected_program);

	unsigned int blocks_per_frame = 150; // 320*240/512
	unsigned int first_block = data_info->block_addr; // start reads here
	unsigned int num_frames = data_info->frame_count; // read this many frames
	double target_fps = data_info->target_fps; // the FPS to aim for

	int i;
	for (i=0; i < num_frames; i++) {

		// user clicked a button during playback
		if (restart_send) {
			break;
		}

		// run if the FPGA has data to run on
		fpga_set_state(i > 0 ? FPGA_STATE_RUN : FPGA_STATE_STOP);

		// read a single frame
		sd_mmc_spi_read_open(first_block + blocks_per_frame * i);
		sd_mmc_spi_read_multiple_sectors_to_ram(FRAME_BUFFER, blocks_per_frame);

		fps_limit(1000 / target_fps);
		osd(i, num_frames);

		// set state to "load data" and send to fpga
		fpga_set_state(FPGA_STATE_LOAD_DATA);
		bus_send_data_bytes(FRAME_BUFFER, blocks_per_frame * 512);

		LED_Toggle(LED2);
	}

	// tell button listener that we're no longer busy
	send_in_progress = FALSE;

	fpga_set_state(FPGA_STATE_STOP);
	LED_On(LED0|LED1|LED2|LED3|LED4|LED5|LED6|LED7);
}


/*
 * Final stage: run program on FPGA, with data from file
 * TODO utdatert
 */
//void run_fpga_program_from_file(void) {
//#define PATH_SIZE strlen(selected_data_unit_path)
//	char *buffer;
//	//bool bmp;
//	busy = TRUE; // Stop listening on buttons
//
//	fpga_send_program(selected_script.fpga_bin_path); // Send program to FPGA
//
//	if (PATH_SIZE > 0) { // If there is data
//		fb_iterator_init(FS_FILE);
//		fb_cd(selected_data_unit_path);
//		fb_iterator_set_ext("*");
//		while (fb_iterator_has_next()) {
//			buffer = fb_iterator_next();
//			char data_path[PATH_SIZE + N_FILES_MAX_DIGITS + 1 + strlen(buffer) + 1];
//			sprintf(data_path, "%s%s", selected_data_unit_path, buffer);
//
//			// Determines if BMP file
//			/*char *suffix = strchr(buffer, '.');
//			suffix++; //skips '.'
//			if (!strcmp(suffix, BMP_FILE_SUFFIX)) 	bmp = true;		//TODO bmp brukes ikke
//			else 									bmp = false;*/
//
//			fpga_send_data_from_file(data_path); // Send data to FPGA
//			fpga_run(); // Run FPGA (waits for ACK)
//			timer_sleep(selected_script.transfer_delay * 1000);
//		}
//	} else {
//		fpga_run(); // No data -> just run
//	}
//
//	busy = FALSE;
//	reset = TRUE; // Resets the AVR-program
//}
