/*
 * filebrowser.h
 *
 *  Created on: Oct 26, 2012
 *      Author: mads
 */

#ifndef FILEBROWSER_H_
#define FILEBROWSER_H_
#include "fsaccess.h"
#include "navigation.h"
#include "serial.h"
extern char currentDirectory[];

/*
 * Error codes returned by functions
 */

#define ERROR_FILENAME_TOO_LONG 	-1;
#define ERROR_NOT_A_DIRECTORY		-2;
#define ERROR_NO_NAV_ID				-3;
#define ERROR_UNKNOWN				-4;
#define ERROR_EXTENSION_TOO_LONG	-5;

/* \brief changes the current directory.
 * Copies the content of newdir into currentDirectory until a null
 * character is copied. Newdir MUST be null-terminated.
 * Param newdir the new directory
 * Return 0 on success, else an error code.
 */
int fb_cd(const char *newdir);

/* \brief lists all files and folders in the current directory to serial port.
 * Return 0 on success, else an error code.
 */
int fb_ls(void);

/* \brief lists all files with the given extension, as well as
 * 		  all folders in the current directory to serial port.
 * Param ext the file extension
 * Return 0 on success, else an error code.
 */
int fb_ls_ext(const char *ext);

/************ ITERATOR **************/
/* Not threadsafe since this is written specifically for the 256 shades of gray
 * avr microcontroller, which will not be employing threading.
 */

/* \brief sets what extensions the iterator will care about.
 * Param ext the file extension
 * Return 0 on success, else an error code.
 */
int fb_iterator_set_ext(const char *new_ext);

/* \brief resets state of the iterator to top of the list.
 */
int fb_iterator_reset();

/* \brief returns the next file in the directory.
 */
char *fb_iterator_next();

/* \brief checks if the iterator has more files to show.
 */
int fb_iterator_has_next();

/* \brief rewinds the iterator n items.
 * returns number of items rewinded (maybe less than n if n is greater than current index)
 */
int fb_iterator_rewind(int n);

/* \brief initializes the iterator. MUST be called before using iterator.
 * param type FS_DIR if you want directories, FS_FILE if you want files.
 */
int fb_iterator_init(Bool type);

/* \brief sets seeker to the given value.
 * returns 1 if invalid value, 0 otherwise.
 */
int fb_iterator_seek(int i);

/* \brief terminates the iterator. Might need to be called to use the file system for other purposes.
 */
void fb_iterator_terminate();

#endif /* FILEBROWSER_H_ */
