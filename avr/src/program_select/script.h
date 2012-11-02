#ifndef SCRIPT_H_
#define SCRIPT_H_

#include "program_select.h"

// SCRIPT LINES
#define SCRIPT_LINE_DESCRIPTION 	0
#define SCRIPT_LINE_FPGA_BIN_PATH 	1
#define SCRIPT_LINE_DATA_TYPE_DIR 	2
#define SCRIPT_LINE_TRANSFER_DELAY 	3

#define SCRIPT_TRANSFER_DELAY_MAX_LENGTH 	16

struct script {
	char description[DEFAULT_STRING_MAX_LENGTH];
	char fpga_bin_path[DEFAULT_STRING_MAX_LENGTH];
	char data_type_directory[DEFAULT_STRING_MAX_LENGTH];
	int transfer_delay;
}selected_script;

int load_script(char *script_path);
void test_load_script(char *path);

#endif
