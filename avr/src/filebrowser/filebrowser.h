/*
 * filebrowser.h
 *
 *  Created on: Oct 26, 2012
 *      Author: mads
 */

#ifndef FILEBROWSER_H_
#define FILEBROWSER_H_

extern char currentDirectory[];

/*
 * Error codes returned by functions
 */

#define ERROR_FILENAME_TOO_LONG 	-1;
#define ERROR_NOT_A_DIRECTORY		-2;
#define ERROR_NO_NAV_ID				-3;
#define ERROR_UNKNOWN				-4;

/* \brief changes the current directory.
 * Copies the content of newdir into currentDirectory until a null
 * character is copied. Newdir MUST be null-terminated.
 * Param newdir the new directory
 * Return 0 on success, else an error code.
 */
int fb_cd(const char *newdir);

/* \brief lists all files and folders in the current directory.
 * Return 0 on success, else an error code.
 */
int fb_ls(void);

/* \brief lists all files with the given extension, as well as
 * 		  all folders in the current directory.
 * Param ext the extension to list.
 * Return 0 on success, else an error code.
 */
int fb_ls_ext(const char *ext);

#endif /* FILEBROWSER_H_ */
