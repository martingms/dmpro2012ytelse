/*
 * bus.h
 *
 *  Created on: Oct 11, 2012
 *      Author: erik
 */

#ifndef BUS_H_
#define BUS_H_

#include "compiler.h"

#define FPGA_IO_BUS_OFFSET 0
#define FPGA_IO_BUS_SIZE 8
#define FPGA_DATA_IN_BUS_OFFSET 9
#define FPGA_DATA_IN_BUS_SIZE 24
#define FPGA_INC_CLK_LINE 33
#define FPGA_SET_STATE_LINE 34
#define FPGA_STATE_OFFSET 35
#define FPGA_STATE_SIZE 3

__inline__ void bus_send_byte(U8 word);

/*! \brief Initializes the bus
 */
void bus_init(void);
//void bus_conf(void);

/*! \brief Puts a word on the bus
 * \param word The word to be sent
 * \param bus_offset The first line of the bus to be used
 * \param bus_size The number of lines to be used following bus_offset
 */
int bus_send_data(U32 word, int bus_offset, int bus_size);

/*! \brief Reads a byte from the I/O bus
 * \param *data Pointer to where the data should be placed
 * \returns Ctrl pin
 */
U8 bus_receive_data(void);

/*! \brief Notifies the FPGA to increment its address when writing data
 */
void bus_toggle_inc_clk_line();

/*! \brief Notifies the FPGA to set its state according to the state bus
 */
void bus_toggle_set_state_line();

#endif /* BUS_H_ */
