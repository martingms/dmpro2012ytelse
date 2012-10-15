/*
 * assert.h
 *
 *  Created on: Oct 13, 2012
 *      Author: mads
 */

#ifndef ASSERT_H_
#define ASSERT_H_

#define ALWAYS_TERMINATE_ON_ASSERTION_VIOLATION 0



//These necessarily need to be defines to get __LINE__ and __FILE__ right
/*
 * Prints an error if the expression is not true in debug mode
 */
#if DEBUG>0
#define assert(expression) \
{\
	if(!(expression)){\
		sprintf(sprintf_buf, violation_string, __LINE__,__FILE__);\
		serial_write(sprintf_buf);\
		if(ALWAYS_TERMINATE_ON_ASSERTION_VIOLATION)exit(-1);\
	}\
}
#else
//Undefine non-critical assertions in release build
#define assert(expression)
#endif

/*
 * Prints an error and terminates if the expression is not true.
 * Do not undefine critical assertions for release.
 */
#define assert_critical(expression) \
{\
	if(!(expression)){\
		sprintf(sprintf_buf, critical_violation_string, __LINE__,__FILE__);\
		serial_write(sprintf_buf);\
		exit(-1);\
	}\
}

/*
 * String to print when an assertion is violated
 */
const char *violation_string = ""
		"\n"
		"ASSERTION VIOLATION:\n"
		"Line %d\n"
		"File <%s>\n"
		"\n";

/*
 * String to print when a critical assertion is violated
 */
const char *critical_violation_string = ""
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
