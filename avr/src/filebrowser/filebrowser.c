/*
 * filebrowser.c
 *
 *  Created on: Oct 26, 2012
 *      Author: mads
 */

#include <string.h>

#include "filebrowser.h"
#include "fsaccess.h"
#include "navigation.h"
#include "serial.h"

char currentDirectory[256];


int fb_cd(const char *newdir){
	if(strlen(newdir)>=256)return ERROR_FILENAME_TOO_LONG;
	if(fsaccess_IsDirPresent( newdir )==0)return ERROR_NOT_A_DIRECTORY;

	char *cd =currentDirectory;
	while((*cd++ = *newdir++));
	return 0;
}

int fb_ls(){
	int CurrentNavId = -1;

	// if no navigator available, return an error
	if ((CurrentNavId = fsaccess_alloc_nav_id()) < 0) return ERROR_NO_NAV_ID;

	// select the navigator
	nav_select( CurrentNavId );

	// navigate to folder
    if(nav_setcwd((FS_STRING)currentDirectory, FALSE, FALSE) == FALSE){
    	fsaccess_free_nav_id(fd);
    	return ERROR_NOT_A_DIRECTORY;
    }
    seprintf("Trying to navigate to first file\n");
    if(nav_filelist_first(FS_FILE)==FALSE){
    	fsaccess_free_nav_id(fd);
    	return ERROR_UNKNOWN;
    }
    seprintf("Trying to get file name\n");
    char filename[255];
    if(nav_file_getname(filename,sizeof(filename))==FALSE){
    	fsaccess_free_nav_id(fd);
    	return ERROR_UNKNOWN;
    }

    seprintf("Filename: %s\n",filename);

    int filecount = nav_filelist_nb(FS_FILE);

    seprintf("Attempting to print all files:\n\n");
    short a;
    for(a=0; a < filecount; a++){
    	if(nav_filelist_goto(a)==FALSE)return ERROR_UNKNOWN;
        char filename[255];
        if(nav_file_getname(filename,sizeof(filename))==FALSE){
        	fsaccess_free_nav_id(fd);
        	return ERROR_UNKNOWN;
        }

        seprintf("%d: %s\n",a,filename);
    }

    fsaccess_free_nav_id(fd);
    return 0;
}
