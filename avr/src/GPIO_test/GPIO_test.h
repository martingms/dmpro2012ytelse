/*
 * GPIO_test.h
 *
 *  Created on: Oct 25, 2012
 *      Author: mads
 */

#ifndef GPIO_TEST_H_
#define GPIO_TEST_H_

/*! \brief Checks pins for short-circuits.
 * \return error code, 0 = success, else error / first pin that was wrong.
 */
int test_all_pins(void);

/*! \brief Checks if the pins have the expected values.
 * \param eVal the expected values
 * \return error code, 0 = success, else error / first pin that was wrong.
 */
int check_pins(char *eVal, char *errors);

/*! \brief Enables all the pins and pulls them down.
 */
void enable_all_pins(void);

#endif /* GPIO_TEST_H_ */
