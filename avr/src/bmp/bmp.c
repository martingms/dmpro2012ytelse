#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bmp.h"
#include <fsaccess.h>
#include "../serial/serial.h"

/*
 * Parses the given buffer as if it were a rawly read file into bmp headers
 * and returns a pointer to the start of the raw image data.
 * The pointer returned is to the raw image data in the same buffer,
 * NO new memory is allocated.
 */
uint8_t * read_BMP_from_buffer(uint8_t *buffer, bmiHeader_t *bmp_hdr){
	BmpImageFileType bmp_type;
	dibHeader_t	 bmp_dibhdr;
	uint8_t *	 buffer_base = buffer;
	memcpy(&bmp_type, buffer, sizeof(BmpImageFileType));
	buffer+=sizeof(BmpImageFileType);
	
	if(bmp_type != BMPFILESIG)
	{
		printf("Error: Not a BMP\n");
		return NULL;
	}
	memcpy(&bmp_dibhdr, buffer, sizeof(dibHeader_t));
	buffer+=sizeof(dibHeader_t);
	memcpy(bmp_hdr,buffer, sizeof(bmiHeader_t));
	buffer+=sizeof(bmiHeader_t);

	if(bmp_hdr->HeaderSize != sizeof(bmiHeader_t)) // sanity check
	{
		printf("BMP Error Incorrect Header Size\n");
		return NULL;
	}

	return buffer_base + bmp_dibhdr.ImageDataOffset;
}

void read_file(const char fn[], char *buffer)
{
	assert(buffer);
	assert(fn);
	int fd = open(fn,O_RDONLY);
	assert(fd);
	int len = 0, read_bytes = 0, total = 0;
	if(!fd)
	{
		seprintf("Error Opening Bitmap File\n");
	}

	//Get file length
	len = fsaccess_file_get_size(fd);
	assert(len);
	while(total<len&&read_bytes>=0){
		read_bytes = read(fd, buffer+read_bytes, len);
		assert(read_bytes);
		total+=read_bytes;
		seprintf("Read %d / %d\n",total,len);
	}
	seprintf("Read %d / %d bytes\n",total,len);
	assert(total==len);
	close(fd);
}
