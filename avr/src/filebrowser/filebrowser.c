/*
 * filebrowser.c
 *
 *  Created on: Oct 26, 2012
 *      Author: mads
 */

#include <string.h>

#include "filebrowser.h"

char currentDirectory[256];
char ext[8] = {0,0,0,0,0,0,0,0};
int iterator_index = 0;
int iterator_navid = -1;
Bool file_or_dir = FS_DIR;
int filecount;
int fb_iterator_set_ext(const char *new_ext){
	if(strlen(new_ext)>=8)return ERROR_EXTENSION_TOO_LONG;
	char *e = ext;
	while((*e++ = *new_ext++));
	return 0;
}

int fb_iterator_reset(){
	iterator_index = 0;
	return 0;
}

int fb_iterator_rewind(int n){
	n = n>iterator_index?iterator_index:n;
	iterator_index-=n;
	return n;
}

void fb_iterator_terminate(){
	fsaccess_free_nav_id(iterator_navid);
	fsaccess_give_mutex();
}

int fb_iterator_init(Bool type){
	file_or_dir = type;
	fb_iterator_reset();

	// if no navigator available, return an error
	if ((iterator_navid = fsaccess_alloc_nav_id()) < 0) return ERROR_NO_NAV_ID;

	fsaccess_take_mutex();

	// select the navigator
	nav_select( iterator_navid );

	// navigate to folder
    if(nav_setcwd((FS_STRING)currentDirectory, FALSE, FALSE) == FALSE){
    	fsaccess_free_nav_id(iterator_navid);
    	return ERROR_NOT_A_DIRECTORY;
    }

    //select top of list
    if(nav_filelist_first(type)==FALSE){
    	fsaccess_free_nav_id(iterator_navid);
    	return ERROR_UNKNOWN;
    }

    nav_filelist_single_enable( type );

    filecount = nav_filelist_nb(file_or_dir);
    return 0;
}

char *fb_iterator_next(){


    static char filename[255];

	while(1){
		if(iterator_index==filecount){
			return NULL;
		}
		if(nav_filelist_goto(iterator_index++)==FALSE){
			return NULL;
		}
    	if(!nav_file_checkext(ext))continue;
    	if(nav_file_getname(filename,sizeof(filename))==FALSE){
    		return NULL;
    	}
    	return filename;
	}
}

int fb_iterator_seek(int i){
	if(i>=filecount) return ERROR_INDEX_OUT_OF_BOUNDS;
	if(i<0) return ERROR_INDEX_OUT_OF_BOUNDS;
	int j = 0;
	while(i>=0 && j<filecount){
		nav_filelist_goto(j++);
		if(nav_file_checkext(ext))i--;
	}
	j--;

	//Seeker reached end of directory without successfully seeking i files
	//with file extension ext.
	if(i>=0)return ERROR_INDEX_OUT_OF_BOUNDS;
	iterator_index = j;
	return 0;
}

int fb_iterator_has_next(){
    if(iterator_index>=filecount)return 0;

    int a = iterator_index;

    while(1){
    	if(a==filecount)return 0;
    	if(nav_filelist_goto(a++)==FALSE)return 0;
    	if(!nav_file_checkext(ext))continue;
    	return 1;
    }
}

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
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_NOT_A_DIRECTORY;
    }
    if(nav_filelist_first(FS_FILE)==FALSE){
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_UNKNOWN;
    }
    char filename[255];
    if(nav_file_getname(filename,sizeof(filename))==FALSE){
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_UNKNOWN;
    }


    seprintf("Contents of folder %s:\n\n",currentDirectory);

    nav_filelist_single_enable( FS_DIR );
    int filecount = nav_filelist_nb(FS_DIR);

    short a;
    for(a=0; a < filecount; a++){
    	if(nav_filelist_goto(a)==FALSE)return ERROR_UNKNOWN;
        char filename[255];
        if(nav_file_getname(filename,sizeof(filename))==FALSE){
        	fsaccess_free_nav_id(CurrentNavId);
        	return ERROR_UNKNOWN;
        }

        seprintf("%d: %s\n",a,filename);
    }
    nav_filelist_single_enable( FS_FILE );
    filecount = nav_filelist_nb(FS_FILE);
    for(a=0; a < filecount; a++){
    	if(nav_filelist_goto(a)==FALSE)return ERROR_UNKNOWN;
        char filename[255];
        if(nav_file_getname(filename,sizeof(filename))==FALSE){
        	fsaccess_free_nav_id(CurrentNavId);
        	return ERROR_UNKNOWN;
        }

        seprintf("%d: %s\n",a,filename);
    }

    fsaccess_free_nav_id(CurrentNavId);
    return 0;
}

int fb_ls_ext(const char *ext){
	int CurrentNavId = -1;

	// if no navigator available, return an error
	if ((CurrentNavId = fsaccess_alloc_nav_id()) < 0) return ERROR_NO_NAV_ID;

	// select the navigator
	nav_select( CurrentNavId );

	// navigate to folder
    if(nav_setcwd((FS_STRING)currentDirectory, FALSE, FALSE) == FALSE){
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_NOT_A_DIRECTORY;
    }
    if(nav_filelist_first(FS_FILE)==FALSE){
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_UNKNOWN;
    }
    char filename[255];
    if(nav_file_getname(filename,sizeof(filename))==FALSE){
    	fsaccess_free_nav_id(CurrentNavId);
    	return ERROR_UNKNOWN;
    }


    seprintf("Contents of folder %s:\n\n",currentDirectory);

    nav_filelist_single_enable( FS_DIR );
    int filecount = nav_filelist_nb(FS_DIR);

    short a;
    for(a=0; a < filecount; a++){
    	if(nav_filelist_goto(a)==FALSE)return ERROR_UNKNOWN;
        char filename[255];
        if(nav_file_getname(filename,sizeof(filename))==FALSE){
        	fsaccess_free_nav_id(CurrentNavId);
        	return ERROR_UNKNOWN;
        }

        seprintf("%d: %s\n",a,filename);
    }
    nav_filelist_single_enable( FS_FILE );
    filecount = nav_filelist_nb(FS_FILE);
    for(a=0; a < filecount; a++){
    	if(nav_filelist_goto(a)==FALSE)return ERROR_UNKNOWN;
    	if(!nav_file_checkext(ext))continue;
        char filename[255];
        if(nav_file_getname(filename,sizeof(filename))==FALSE){
        	fsaccess_free_nav_id(CurrentNavId);
        	return ERROR_UNKNOWN;
        }

        seprintf("%d: %s\n",a,filename);
    }

    fsaccess_free_nav_id(CurrentNavId);
    return 0;
}
