#ifndef PROGRAM_SELECT_H_
#define PROGRAM_SELECT_H_

#include "compiler.h"

// FILE SUFFICES
#define LENA_EXECUTABLE_SUFFIX 	"bin"
#define DATA_FILE_SUFFIX 		"cfg"
//#define SCRIPT_FILE_SUFFIX 		"script"

// STRINGS AND ARRAY MAXIMUMS
#define N_FILES_MAX_DIGITS 					20


// Copied from script.h, dont ask...
#define DEFAULT_STRING_MAX_LENGTH 			256


typedef struct data_blk_src_t {
	unsigned int block_addr;
	unsigned int frame_count;
	double target_fps;
} data_blk_src_t;


/*! \brief Starts the program
 * This function never returns
 */
void program_select_start();

void button_push(U8 button);
void load_menu(int state);
void next_state(void);
//void run_fpga_program_from_file(void);
void run_fpga_program_from_sd(data_blk_src_t *data_info);
int load_script(char *script_path);

#endif
