#ifndef PROGRAM_SELECT_H_
#define PROGRAM_SELECT_H_

#include "compiler.h"

// FILE SUFFICES
#define DATA_FILE_SUFFIX 	"lenna"
#define SCRIPT_FILE_SUFFIX 	"script"

// STRINGS AND ARRAY MAXIMUMS
#define N_FILES_MAX_DIGITS 					20
#define DEFAULT_STRING_MAX_LENGTH 			256


/*! \brief Starts the program
 * This function never returns
 */
void program_select_start();

void button_push(U8 button);
void load_menu(int state);
void next_state(void);
void run_fpga_program(void);
int load_script(char *script_path);

#endif
