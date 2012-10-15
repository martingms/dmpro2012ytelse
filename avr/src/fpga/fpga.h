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
#define FPGA_STATE_WRITE_DATA			2
#define FPGA_STATE_READ_DATA			3
#define FPGA_STATE_WRITE_INSTRUCTION	4

/*! \brief Sends a list of words to the FPGA
 * \param *words The list of 24 bit words to be sent
 */
void fpga_send_data(U32 *words);

/*! \brief Sets the FPGA to a given state
 * \param state
 */
void fpga_set_state(U8 state);
U8 fpga_get_state(void);


#endif /* FPGA_H_ */
