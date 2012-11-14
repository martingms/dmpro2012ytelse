#ifndef STR2IMG_H_GUARD
#define STR2IMG_H_GUARD

#define R_COLS 40 // number of columns in the image (dont try to change :) )
#define R_ROWS 15 // number of rows in the image
#define R_BPCX 1 // Byte Per Char X
#define R_BPCY 2 // Byte Per Char Y
#define R_STRIDE (R_COLS * R_BPCX) // width of a single "scanline", in bytes.
#define STR2IMG_BUFFER_SIZE (R_COLS*R_BPCX*R_ROWS*R_BPCY*8)

// retrieve the pixel value at (x,y). either 1 or 0.
#define R_READ(x,y) (((unsigned char)( buf[y * R_STRIDE + (x/8)] & (1<<(7-x%8)) ))>0)

// tells str2img where to put its working data buffer
void str2img_init(unsigned char *addr);

// clears the image and resets the pointer to position (0,0) (upper left hand corner)
void str2img_clear();

// write a single character to image. increment pointer to next character position
void str2img_putc(const char c);

// write a string to image. will wrap if need be
void str2img_write(const char *line);

// write a string, and append a newline at the end
void str2img_writeline(const char *line);

// jump to the specified position. max: (15, 40)
void str2img_set_cursor(unsigned int row, unsigned int col);

// retrieve the current cursor column (0 throught 39)
unsigned int str2img_get_cursor_col();

// retrieve current cursor row (0 through 14)
unsigned int str2img_get_cursor_row();

// writes the entire image to the specified address. must be able to hold 320*240 bytes.
void str2img_read_block(unsigned char *data);

// OSD (on screen display)!
void str2img_osd_init(unsigned char *sram);
void str2img_osd_set_cursor(unsigned int row, unsigned int col);
unsigned char str2img_osd_get_cursor_row();
unsigned char str2img_osd_get_cursor_col();
void str2img_osd_reset();
void str2img_osd_putc(char c);
void str2img_osd_write(const char *str);

#endif
