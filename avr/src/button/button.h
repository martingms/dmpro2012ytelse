#ifndef BUTTON_H
#define BUTTON_H

#include "compiler.h"

/*! \brief Initializes the buttons with interrupts.
 *
 * \return \ref GPIO_SUCCESS or \ref GPIO_INVALID_ARGUMENT.
 */
int button_init(void);

/*! \brief Registers a listener function to be called on a button interrupt.
 *
 * When the listener is called the bits of the parameter will
 * represent the status of the buttons. The least significant
 * bit represents the status of the first button (and so on).
 * Button pushed 	= 1
 * Button released 	= 0
 *
 * \param listener The listener function. It must take one parameter U8.
 */
int button_reg_listener(void(*listener) (U8));


#endif
