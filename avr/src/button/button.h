#ifndef BUTTON_H
#define BUTTON_H

#include "compiler.h"
/*
 * Initializes the buttons with interrupts
 */
int button_init(void);

/*
 * Registers a listener to be called on a button interrupt
 * The listener is a function and must take one parameter U8.
 * When the listener is called the bits of the parameter will
 * represent the status of the buttons. The least significant
 * bit represents the status of the first button (and so on).
 * Button pushed 	= 1
 * Button released 	= 0
 */
int button_reg_listener(void(*listener) (U8));


#endif
