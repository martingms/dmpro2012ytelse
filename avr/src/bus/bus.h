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


/*! \brief puts a 8-bit byte on the data bus
 * \param byte The byte to be sent
 */
void bus_send_data_byte(U8 byte);


/*! \brief puts a 32-bit word on the data bus, one byte at the time
 * \param word The word to be sent
 */
void bus_send_data_word(U32 word);


/*! \brief puts count 32-bit words on the data bus
 * \param words - pointer to data to send
 * \param count - number of 32-bit words to send
 */
void bus_send_data_words(U32 *words, size_t count);


/*! \brief puts the first 24 bits of the word on a 24-bit bus
 * \param instr the instruction to send
 */
void bus_send_instr_word(U32 instr);


/*! \brief flushes (sets data pins low) the data pins */
void bus_flush_data_bus();

/*! sends a program (from memory) to the FPGA.
 * \param program pointer to the program to send
 * \param bytes the number of bytes to send
 */
void bus_send_program(U8 *program, size_t bytes);

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
