/*
 * assert.h
 *
 *  Created on: Oct 13, 2012
 *      Author: mads
 */

#ifndef ASSERT_H_
#define ASSERT_H_

#define ALWAYS_TERMINATE_ON_ASSERTION_VIOLATION 0
#define voice seprintf("I am at line %d in file <%s>\n", __LINE__,__FILE__);

#include "serial/serial.h"

//These necessarily need to be defines to get __LINE__ and __FILE__ right
/*
 * Prints an error if the expression is not true in debug mode
 */

#define assert(expression) \
{\
	if(!(expression)){\
		seprintf(violation_string, __LINE__,__FILE__);\
		if(ALWAYS_TERMINATE_ON_ASSERTION_VIOLATION)exit(-1);\
	}\
}

/*
 * Prints an error and terminates if the expression is not true.
 * Do not undefine critical assertions for release.
 */
#define assert_critical(expression) \
{\
	if(!(expression)){\
		seprintf(critical_violation_string, __LINE__,__FILE__);\
		exit(-1);\
	}\
}

/*
 * String to print when an assertion is violated
 */
static char *violation_string = ""
		"\n"
		"ASSERTION VIOLATION:\n"
		"Line %d\n"
		"File <%s>\n"
		"\n";

/*
 * String to print when a critical assertion is violated
 */
static char *critical_violation_string = ""
		"\n"
		"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
		"CRITICAL ASSERTION VIOLATION:\n"
		"Line %d\n"
		"File <%s>\n"
		"\n"
		"RUNTIME WILL TERMINATE\n"
		"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
		"\n";


#endif /* ASSERT_H_ */

