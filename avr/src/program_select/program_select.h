#ifndef PROGRAM_SELECT_H_
#define PROGRAM_SELECT_H_

#include "compiler.h"
void button_push(U8 button);

/*! \brief Starts the program
 * This function never returns
 */
void program_select_start();

void load_menu(int state);
void next_state(void);
void run_fpga_program(void);
int load_script(char *script_path);

#endif
