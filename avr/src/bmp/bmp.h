#include <stdint.h>
#define BMPFILESIG 0x4d42
typedef uint16_t BmpImageFileType;

typedef struct {
        uint32_t  FileSize;
        uint16_t  RES1;
        uint16_t  RES2;
        uint32_t  ImageDataOffset;
} dibHeader_t;

typedef struct {
        uint32_t  HeaderSize;
        uint32_t  ImageWidth;
        uint32_t  ImageHeight;
        uint16_t  NumberOfImagePlanes;
        uint16_t  BitsPerPixel;
        uint32_t  CompressionMethod;
        uint32_t  SizeOfBitmap;
        uint32_t  HorizResolution;
        uint32_t  VertResolution;
        uint32_t  NumColorsUsed;
        uint32_t  NumSignificantColors;
} bmiHeader_t;

uint8_t * read_BMP_from_buffer(uint8_t *buffer, bmiHeader_t *bmp_hdr);
uint8_t * read_BMP_from_file(const char fn[], bmiHeader_t *bmp_hdr);

//Move this to some general utilities
uint8_t * read_file(const char fn[]);
void print_memory(void *data, uint32_t len);
