/*
 * bus.h
 *
 *  Created on: Oct 11, 2012
 *      Author: erik
 */

#ifndef FPGA_H_
#define FPGA_H_

#include "compiler.h"

#define FPGA_STATE_STOP					0
#define FPGA_STATE_RUN 					1
#define FPGA_STATE_LOAD_DATA			2
#define FPGA_STATE_STORE_DATA			3
#define FPGA_STATE_LOAD_INSTRUCTION		4


/*! \brief Sends data to the FPGA from a file
 * \param *data_path The path to the file
 */
void fpga_send_data_from_file(const char *file);

/*! \brief Sends data to the FPGA from memory
 * \param *words The list of 8 bit words to be sent
 * \param length how many words are to be sent
 */
void fpga_send_data_from_memory(U8 *data, size_t n_bytes);

/*! \brief Sends instructions to the FPGA from file
 * \param *program_path The path to the program
 */
int fpga_send_program(char *program_path);



void fpga_receive_data(void);
void fpga_run(void);

/*! \brief Sets the FPGA to a given state
 * \param state
 */
void fpga_set_state(U8 state);
U8 fpga_get_state(void);

/*! \brief Initializes interrupts from FPGA
 */
int fpga_init_interrupt(void);

/*! \brief Sets a given function to be called on an FPGA interrupt
 * Only one function can listen at a time
 */
void fpga_set_listener(void(*l) (void));


#endif /* FPGA_H_ */
