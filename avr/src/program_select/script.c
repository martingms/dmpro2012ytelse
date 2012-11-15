#include "script.h"
#include "serial.h"
#include <fsaccess.h>
#include "sram.h"

#include "screen.h" //TODO debug only
int load_script(char *script_path) {
	char c_buffer;
	int i,fd,line;
	char delay_buffer[SCRIPT_TRANSFER_DELAY_MAX_LENGTH];

	// Empty script strings TODO nødvendig?
//	for (i = 0; i < DEFAULT_STRING_MAX_LENGTH; ++i) {
//		selected_script.description[i] 			= '\0';
//		selected_script.fpga_bin_path[i] 		= '\0';
//		selected_script.data_type_directory[i] 	= '\0';
//		if (i<SCRIPT_TRANSFER_DELAY_MAX_LENGTH) {
//			delay_buffer[i] = '\0';
//		}
//	}

	// Open script file
	fd = open(script_path, O_RDONLY);
	if (fd < 0) {
		seprintf("Could not open script: %s\n", script_path);
		return fd;
	}

	int rd = 0;
	int fs = fsaccess_file_get_size(fd);
	char *buffer = SCRIPT_LOAD;
	while (rd < fs) {
		rd += read(rd, buffer, 512);
		buffer += rd;
	}
	*buffer = '\0';


	// description
	char *str = SCRIPT_LOAD;
	int desc_len = (strstr(str, "\n") - str);
	strncpy(selected_script.description, str, desc_len);

	// fpga_bin_path
	str += desc_len + 1;
	int fpga_bin_path_len = (strstr(str, "\n") - str);
	strncpy(selected_script.fpga_bin_path, str, fpga_bin_path_len);

	// data_type_directory
//	str += fpga_bin_path_len + 1;
//	int data_type_dir_len = (strstr(str, "\n") - str);
//	strncpy(selected_script.data_type_directory, str, data_type_dir_len);

	// transfer_delay
//	str += data_type_dir_len + 1;
	str += fpga_bin_path_len + 1;
	int transfer_delay_len = fs - (str - (char*)SCRIPT_LOAD);
	char buf[10];
	strncpy(buf, str, transfer_delay_len);
	selected_script.transfer_delay = atoi(buf);

	close(fd);
	return 0;

//	char description[DEFAULT_STRING_MAX_LENGTH];
//		char fpga_bin_path[DEFAULT_STRING_MAX_LENGTH];
//		char data_type_directory[DEFAULT_STRING_MAX_LENGTH];
//		int  transfer_delay;

	// Read script file
//	for (i=0, line=0; read(fd, &c_buffer, 1) > 0; ++i) {
//
//		if (c_buffer == '\n') {
//
//			// End line
//			switch (line) {
//			case SCRIPT_LINE_DESCRIPTION:
//				selected_script.description[i] = '\0';
//				break;
//			case SCRIPT_LINE_FPGA_BIN_PATH:
//				selected_script.fpga_bin_path[i] = '\0';
//				break;
//			case SCRIPT_LINE_DATA_TYPE_DIR:
//				selected_script.data_type_directory[i] = '\0';
//				break;
//			case SCRIPT_LINE_TRANSFER_DELAY:
//				delay_buffer[i] = '\0';
//				break;
//			}
//
//			line++;			// Go to next line in script file
//			i=0; 			// Reset character counter
//			continue;		// Skip to next byte
//		}
//
//		// Read lines in script file
//		switch (line) {
//			case SCRIPT_LINE_DESCRIPTION:
//			{
//				if (i < DEFAULT_STRING_MAX_LENGTH) {
//					selected_script.description[i] = c_buffer;
//					//screen_display_error_mssagef(selected_script.description);
//				}
//				break;
//			}
//			case SCRIPT_LINE_FPGA_BIN_PATH:
//			{
//				if (i >= DEFAULT_STRING_MAX_LENGTH) {
//					//seprintf("Error: FPGA binary file path in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
//					return -1;
//				}
//				selected_script.fpga_bin_path[i] = c_buffer; //TODO klarer å lese alle linjene fra kortet, men klarer kun å lagre den første linja i stringen
//				//screen_display_error_messagef(selected_script.fpga_bin_path);
//				break;
//			}
//			case SCRIPT_LINE_DATA_TYPE_DIR:
//			{
//				if (i >= DEFAULT_STRING_MAX_LENGTH) {
//					//seprintf("Error: Data type path in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
//					return -1;
//				}
//				selected_script.data_type_directory[i] = c_buffer;
//				break;
//			}
//			case SCRIPT_LINE_TRANSFER_DELAY:
//			{
//				if (i >= DEFAULT_STRING_MAX_LENGTH) {
//					//seprintf("Error: Transfer delay in script too long (max %d characters). Loading failed.\n", DEFAULT_STRING_MAX_LENGTH);
//					return -1;
//				}
//				delay_buffer[i] = c_buffer;
//				break;
//			}
////			default: // Unexpected line
////			{
////				//seprintf("Warning: Unexpected line detected in script %s\n", script_path);
////				//goto no_more_lines; // Breaks out of for loop
////			}
//		}
//	}
//	close(fd);
	//no_more_lines:
	selected_script.transfer_delay = atoi(delay_buffer);
	return 0;
}

int data_file_parse(const char *path, data_blk_src_t *result) {
	int fd = open(path, O_RDONLY);
	if (fd < 0) {
		LED_On((1 << LED_COUNT) - 1);
		while(1);
		return fd;
	}

	char *buf = DATA_FILE_PARSE;
	if (read(fd, buf, DATA_FILE_PARSE_SIZE) < 1) {
		LED_On((1 << LED_COUNT) - 1);
		while(1);
		return fd;
	}

	unsigned int ba = -1, fc = -1;
	sscanf(buf, "%u %u", &ba, &fc);

	if (ba > SD_RAW_ACCESS_MIN_BLOCK && ba < SD_RAW_ACCESS_MAX_BLOCK) {
		return 1;
	}
	if (fc <= 0) {
		return 2;
	}

	result->block_addr = ba;
	result->frame_count = fc;
	return 0;
}
