#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bmp.h"

uint8_t * read_BMP_from_buffer(uint8_t *buffer, bmiHeader_t *bmp_hdr){
	BmpImageFileType bmp_type;
	dibHeader_t	 bmp_dibhdr;
	uint8_t *	 buffer_base = buffer;
	memcpy(&bmp_type, buffer, sizeof(BmpImageFileType));
	buffer+=sizeof(BmpImageFileType);
	
	if(bmp_type != BMPFILESIG)
	{
		printf("Error Not BMP\n");
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

uint8_t * read_BMP_from_file(const char fn[], bmiHeader_t *bmp_hdr)
{
	FILE *fp;
	uint8_t *bmp_in;
	BmpImageFileType bmp_type;
	dibHeader_t      bmp_dibhdr;

	if((fp = fopen(fn,"rb"))==NULL)
	{
	printf("Error Opening Bitmap File\n");
	return NULL;
	}

	fread(&bmp_type,sizeof(BmpImageFileType),1,fp);

	if(bmp_type != BMPFILESIG)
	{
	printf("Error Not a BMP file\n");
	fclose(fp);
	return NULL;
	}

	fread(&bmp_dibhdr,sizeof(dibHeader_t),1,fp);
	fread(bmp_hdr,sizeof(bmiHeader_t),1,fp);

	if(bmp_hdr->HeaderSize != sizeof(bmiHeader_t)) // sanity check
	{
	printf("BMP Error Incorrect Header Size\n");
	fclose(fp);
	return NULL;
	}

	if((bmp_in = (uint8_t *) malloc(bmp_hdr->SizeOfBitmap)) == NULL)
	{
	printf("Error Allocating Memory for BMP\n");
	fclose(fp);
	return NULL;
	}

	// locate & load the pixmap data
	fseek(fp, bmp_dibhdr.ImageDataOffset, SEEK_SET);
	fread(bmp_in,bmp_hdr->SizeOfBitmap,1,fp);

	fclose(fp);
	return bmp_in;
} 
uint8_t * read_file(const char fn[])
{
	FILE *fp;
	uint8_t *in;
	uint64_t len;

	if((fp = fopen(fn,"rb"))==NULL)
	{
		printf("Error Opening Bitmap File\n");
		return NULL;
	}

	//Get file length
	fseek(fp, 0, SEEK_END);
	len=ftell(fp);
	fseek(fp, 0, SEEK_SET);
	if(!(in = (uint8_t *) malloc(len)))
	{
		printf("Error Allocating Memory for File\n");
		fclose(fp);
		return NULL;
	}

	fread(in,len,1,fp);

	fclose(fp);
	return in;
}
void print_memory(void *data, uint32_t len){
	uint8_t *asd = (uint8_t*)data;
	uint32_t i;
	for(i = 0; i < len; i++){
		printf("%d:\t%d\n",i,asd[i]);
	}
}
