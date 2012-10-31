#ifndef STR2IMG_H_GUARD
#define STR2IMG_H_GUARD

#define R_COLS 40
#define R_ROWS 15
#define R_BPCX 1 // Byte Per Char X
#define R_BPCY 2 // Byte Per Char Y
#define R_STRIDE (R_COLS * R_BPCX)

#define R_READ(x,y) (((unsigned char)( buf[y * R_STRIDE + (x/8)] & (1<<(7-x%8)) ))>0)

void str2img_clear();

void str2img_putc(const char c);
void str2img_write(const char *line);
void str2img_writeline(const char *line);

void str2img_set_cursor(unsigned int row, unsigned int col);
unsigned int str2img_get_cursor_col();
unsigned int str2img_get_cursor_row();

void str2img_read_block(unsigned char *data);

#endif
