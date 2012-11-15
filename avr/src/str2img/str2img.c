#include "str2img.h"
#include "compiler.h"

static unsigned char *buf;
static unsigned int pos = 0;

static unsigned char A[] = { 255, 255, 247, 227, 235, 233, 221, 221, 128, 190, 62, 127, 255, 255, 255, 255 };
static unsigned char B[] = { 255, 255, 129, 188, 190, 188, 129, 188, 190, 190, 188, 129, 255, 255, 255, 255 };
static unsigned char C[] = { 255, 255, 227, 220, 158, 191, 191, 191, 191, 158, 220, 225, 255, 255, 255, 255 };
static unsigned char D[] = { 255, 255, 131, 185, 188, 190, 190, 190, 190, 188, 185, 131, 255, 255, 255, 255 };
static unsigned char E[] = { 255, 255, 128, 191, 191, 191, 128, 191, 191, 191, 191, 128, 255, 255, 255, 255 };
static unsigned char F[] = { 255, 255, 128, 191, 191, 191, 128, 191, 191, 191, 191, 191, 255, 255, 255, 255 };
static unsigned char G[] = { 255, 255, 227, 220, 158, 191, 191, 184, 190, 158, 204, 225, 255, 255, 255, 255 };
static unsigned char H[] = { 255, 255, 190, 190, 190, 190, 128, 190, 190, 190, 190, 190, 255, 255, 255, 255 };
static unsigned char I[] = { 255, 255, 193, 247, 247, 247, 247, 247, 247, 247, 247, 193, 255, 255, 255, 255 };
static unsigned char J[] = { 255, 255, 225, 253, 253, 253, 253, 253, 253, 189, 153, 195, 255, 255, 255, 255 };
static unsigned char K[] = { 255, 255, 190, 189, 187, 183, 167, 147, 187, 189, 190, 190, 255, 255, 255, 255 };
static unsigned char L[] = { 255, 255, 223, 223, 223, 223, 223, 223, 223, 223, 223, 192, 255, 255, 255, 255 };
static unsigned char M[] = { 255, 255, 158, 156, 156, 170, 170, 162, 182, 190, 190, 190, 255, 255, 255, 255 };
static unsigned char N[] = { 255, 255, 158, 158, 142, 174, 182, 182, 186, 184, 188, 188, 255, 255, 255, 255 };
static unsigned char O[] = { 255, 255, 193, 221, 156, 190, 190, 190, 190, 156, 221, 193, 255, 255, 255, 255 };
static unsigned char P[] = { 255, 255, 129, 188, 190, 188, 129, 191, 191, 191, 191, 191, 255, 255, 255, 255 };
static unsigned char Q[] = { 255, 255, 193, 221, 156, 190, 190, 190, 190, 156, 221, 195, 247, 243, 248, 255 };
static unsigned char R[] = { 255, 255, 129, 188, 190, 188, 129, 179, 179, 185, 188, 190, 255, 255, 255, 255 };
static unsigned char S[] = { 255, 255, 193, 156, 190, 159, 195, 240, 254, 190, 156, 193, 255, 255, 255, 255 };
static unsigned char T[] = { 255, 255, 128, 247, 247, 247, 247, 247, 247, 247, 247, 247, 255, 255, 255, 255 };
static unsigned char U[] = { 255, 255, 190, 190, 190, 190, 190, 190, 190, 190, 156, 193, 255, 255, 255, 255 };
static unsigned char V[] = { 255, 255, 127, 127, 190, 190, 221, 221, 235, 235, 227, 247, 255, 255, 255, 255 };
static unsigned char W[] = { 255, 255, 127, 127, 62, 50, 162, 162, 170, 136, 136, 221, 255, 255, 255, 255 };
static unsigned char X[] = { 255, 255, 190, 221, 201, 235, 243, 247, 235, 201, 221, 190, 255, 255, 255, 255 };
static unsigned char Y[] = { 255, 255, 127, 190, 156, 221, 201, 235, 247, 247, 247, 247, 255, 255, 255, 255 };
static unsigned char Z[] = { 255, 255, 128, 252, 253, 251, 247, 231, 239, 223, 191, 128, 255, 255, 255, 255 };
static unsigned char a[] = { 255, 255, 255, 255, 131, 153, 253, 193, 157, 185, 145, 132, 255, 255, 255, 255 };
static unsigned char b[] = { 255, 191, 191, 191, 131, 153, 157, 189, 189, 189, 153, 131, 255, 255, 255, 255 };
static unsigned char c[] = { 255, 255, 255, 255, 195, 153, 191, 191, 191, 191, 157, 195, 255, 255, 255, 255 };
static unsigned char d[] = { 255, 253, 253, 253, 193, 153, 189, 189, 189, 185, 153, 197, 255, 255, 255, 255 };
static unsigned char e[] = { 255, 255, 255, 255, 195, 153, 189, 129, 191, 191, 153, 195, 255, 255, 255, 255 };
static unsigned char f[] = { 255, 240, 243, 247, 192, 247, 247, 247, 247, 247, 247, 247, 255, 255, 255, 255 };
static unsigned char g[] = { 255, 255, 255, 255, 197, 153, 189, 189, 189, 189, 153, 197, 253, 185, 131, 255 };
static unsigned char h[] = { 255, 191, 191, 191, 131, 153, 189, 189, 189, 189, 189, 189, 255, 255, 255, 255 };
static unsigned char i[] = { 255, 247, 255, 255, 199, 247, 247, 247, 247, 247, 247, 128, 255, 255, 255, 255 };
static unsigned char j[] = { 255, 251, 255, 255, 195, 251, 251, 251, 251, 251, 251, 251, 251, 179, 135, 255 };
static unsigned char k[] = { 255, 191, 191, 191, 188, 187, 167, 143, 135, 179, 185, 188, 255, 255, 255, 255 };
static unsigned char l[] = { 255, 199, 247, 247, 247, 247, 247, 247, 247, 247, 247, 128, 255, 255, 255, 255 };
static unsigned char m[] = { 255, 255, 255, 255, 129, 146, 182, 182, 182, 182, 182, 182, 255, 255, 255, 255 };
static unsigned char n[] = { 255, 255, 255, 255, 131, 153, 189, 189, 189, 189, 189, 189, 255, 255, 255, 255 };
static unsigned char o[] = { 255, 255, 255, 255, 195, 153, 189, 189, 189, 189, 153, 195, 255, 255, 255, 255 };
static unsigned char p[] = { 255, 255, 255, 255, 131, 153, 189, 189, 189, 189, 153, 131, 191, 191, 191, 255 };
static unsigned char q[] = { 255, 255, 255, 255, 193, 153, 189, 189, 189, 189, 153, 193, 253, 253, 253, 255 };
static unsigned char r[] = { 255, 255, 255, 255, 232, 227, 231, 239, 239, 239, 239, 239, 255, 255, 255, 255 };
static unsigned char s[] = { 255, 255, 255, 255, 195, 153, 191, 131, 225, 253, 153, 195, 255, 255, 255, 255 };
static unsigned char t[] = { 255, 255, 239, 239, 192, 239, 239, 239, 239, 239, 230, 224, 255, 255, 255, 255 };
static unsigned char u[] = { 255, 255, 255, 255, 189, 189, 189, 189, 189, 189, 153, 129, 255, 255, 255, 255 };
static unsigned char v[] = { 255, 255, 255, 255, 190, 156, 221, 201, 235, 235, 227, 247, 255, 255, 255, 255 };
static unsigned char w[] = { 255, 255, 255, 255, 127, 62, 182, 162, 170, 136, 201, 221, 255, 255, 255, 255 };
static unsigned char x[] = { 255, 255, 255, 255, 156, 221, 235, 227, 227, 235, 221, 156, 255, 255, 255, 255 };
static unsigned char y[] = { 255, 255, 255, 255, 190, 156, 221, 205, 201, 235, 227, 247, 247, 239, 159, 255 };
static unsigned char z[] = { 255, 255, 255, 255, 129, 249, 251, 247, 239, 223, 159, 128, 255, 255, 255, 255 };
static unsigned char _1[] = { 255, 255, 231, 199, 151, 247, 247, 247, 247, 247, 247, 128, 255, 255, 255, 255 };
static unsigned char _2[] = { 255, 255, 193, 156, 190, 252, 252, 241, 231, 207, 159, 128, 255, 255, 255, 255 };
static unsigned char _3[] = { 255, 255, 193, 156, 190, 248, 227, 248, 254, 190, 156, 193, 255, 255, 255, 255 };
static unsigned char _4[] = { 255, 255, 249, 249, 245, 229, 205, 157, 128, 253, 253, 253, 255, 255, 255, 255 };
static unsigned char _5[] = { 255, 255, 128, 191, 191, 129, 156, 254, 254, 190, 156, 193, 255, 255, 255, 255 };
static unsigned char _6[] = { 255, 255, 225, 204, 191, 129, 156, 190, 190, 158, 204, 193, 255, 255, 255, 255 };
static unsigned char _7[] = { 255, 255, 128, 252, 253, 251, 243, 247, 247, 231, 239, 239, 255, 255, 255, 255 };
static unsigned char _8[] = { 255, 255, 193, 156, 190, 156, 193, 156, 190, 190, 156, 193, 255, 255, 255, 255 };
static unsigned char _9[] = { 255, 255, 193, 157, 188, 190, 190, 156, 192, 252, 153, 195, 255, 255, 255, 255 };
static unsigned char _0[] = { 255, 255, 193, 221, 156, 190, 182, 182, 190, 156, 221, 193, 255, 255, 255, 255 };
static unsigned char space[] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 };
static unsigned char ndash[] = { 255, 255, 255, 255, 255, 255, 255, 195, 255, 255, 255, 255, 255, 255, 255, 255 };
static unsigned char underscore[] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 255, 255 };
static unsigned char dot[] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 247, 247, 255, 255, 255, 255 };
static unsigned char exclamation[] = { 255, 255, 247, 247, 247, 247, 247, 247, 247, 255, 255, 247, 255, 255, 255, 255 };
static unsigned char question[] = { 255, 255, 193, 136, 158, 252, 248, 243, 247, 255, 255, 247, 255, 255, 255, 255 };
static unsigned char comma[] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 243, 243, 231, 231, 255, 255 };
static unsigned char opening_bracket[] = { 255, 241, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 241, 255 };
static unsigned char closing_bracket[] = { 255, 199, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 199, 255 };
static unsigned char pipe[] = { 255, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 247, 255 };
static unsigned char asterisk[] = { 255, 255, 255, 255, 255, 247, 213, 227, 227, 201, 255, 255, 255, 255, 255, 255 };
static unsigned char equal[] = { 255, 255, 255, 255, 255, 128, 255, 255, 128, 255, 255, 255, 255, 255, 255, 255 };

static unsigned char *lut(char chr) {
	switch (chr) {
		case 'A': return A;
		case 'B': return B;
		case 'C': return C;
		case 'D': return D;
		case 'E': return E;
		case 'F': return F;
		case 'G': return G;
		case 'H': return H;
		case 'I': return I;
		case 'J': return J;
		case 'K': return K;
		case 'L': return L;
		case 'M': return M;
		case 'N': return N;
		case 'O': return O;
		case 'P': return P;
		case 'Q': return Q;
		case 'R': return R;
		case 'S': return S;
		case 'T': return T;
		case 'U': return U;
		case 'V': return V;
		case 'W': return W;
		case 'X': return X;
		case 'Y': return Y;
		case 'Z': return Z;
		case 'a': return a;
		case 'b': return b;
		case 'c': return c;
		case 'd': return d;
		case 'e': return e;
		case 'f': return f;
		case 'g': return g;
		case 'h': return h;
		case 'i': return i;
		case 'j': return j;
		case 'k': return k;
		case 'l': return l;
		case 'm': return m;
		case 'n': return n;
		case 'o': return o;
		case 'p': return p;
		case 'q': return q;
		case 'r': return r;
		case 's': return s;
		case 't': return t;
		case 'u': return u;
		case 'v': return v;
		case 'w': return w;
		case 'x': return x;
		case 'y': return y;
		case 'z': return z;
		case '0': return _0;
		case '1': return _1;
		case '2': return _2;
		case '3': return _3;
		case '4': return _4;
		case '5': return _5;
		case '6': return _6;
		case '7': return _7;
		case '8': return _8;
		case '9': return _9;
		case '-': return ndash;
		case '_': return underscore;
		case '.': return dot;
		case '!': return exclamation;
		case ' ': return space;
		case '?': return question;
		case ',': return comma;
		case '[': return opening_bracket;
		case ']': return closing_bracket;
		case '|': return pipe;
		case '*': return asterisk;
		case '=': return equal;
		default:
			return question;
	}
}

void str2img_init(unsigned char *addr) {
	buf = addr;
}

void str2img_clear() {
	int y, x;
	for (y = 0; y < R_ROWS * R_BPCY * 8; y++) {
		for (x = 0; x < R_COLS * R_BPCX; x++) {
			buf[y * R_STRIDE + x] = 255;
		}
	}

}

#include "led.h"
void str2img_putc(const char c) {
	switch (c) {
		case '\n':
			pos = (pos + R_STRIDE * 8 * R_BPCY) - (pos % R_STRIDE);
			break;
		default: {
			unsigned char *l = lut(c);
			int j, i;
			for (j = 0; j < 8*R_BPCY; j++) {
				for (i = 0; i < R_BPCX; i++) {
					buf[pos + j * R_STRIDE + i] = l[j * R_BPCX + i];
				}
			}
			pos += R_BPCX;
			if (pos % R_STRIDE == 0) {
				pos += R_STRIDE * (8 * R_BPCY - 1);
			}
		}
	}
}

void str2img_write(const char *line) {
	char c;
	while ((c = *line++) != '\0') {
		str2img_putc(c);
	}
}

void str2img_writeline(const char *line) {
	str2img_write(line);
	str2img_putc('\n');
}

void str2img_set_cursor(unsigned int row, unsigned int col) {
	pos = row * R_STRIDE * R_BPCY * 8 + col * R_BPCX;
}

unsigned int str2img_get_cursor_col() {
	return (pos % R_STRIDE) / R_BPCX;
}

unsigned int str2img_get_cursor_row() {
	return pos / (R_STRIDE * 8 * R_BPCY);
}

void str2img_read_block(U8 *data) {
	int x, y;
	for (y = 0; y < (R_ROWS * R_BPCY * 8); y++) {
		for (x = 0; x < (R_COLS * R_BPCX * 8); x++) {
			data[y * R_STRIDE * 8 + x] = R_READ(x,y) ? 255 : 0;
		}
	}
}


// functions to write to existing picture :)
static unsigned char *osd_ptr;
static unsigned char osd_row;
static unsigned char osd_col;
void str2img_osd_init(unsigned char *fb) {
	osd_ptr = fb;
	osd_row = 0;
	osd_col = 0;
}

void str2img_osd_set_cursor(unsigned int row, unsigned int col) {
	osd_row = row;
	osd_col = col;
}
unsigned char str2img_osd_get_cursor_row() {
	return osd_row;
}
unsigned char str2img_osd_get_cursor_col() {
	return osd_col;
}
void str2img_osd_reset() {
	osd_row = 0;
	osd_col = 0;
}
void str2img_osd_putc(char c) {
	unsigned char *l = lut(c);

	int y, x;
	unsigned char *ptr = osd_ptr + 320 * osd_row * 16 + osd_col * 8;
	for (x = 0; x < 8; x++) {
		for (y = 0; y < 16; y++) {
			ptr[320 * y + x] ^= (l[y] & (1<<(7-x))) ? 0 : 255;
		}
	}

	if (osd_col < 39) {
		osd_col++;
	} else {
		osd_col = 0;
		osd_row++;
	}
}
void str2img_osd_write(const char *str) {
	char c;
	while ( (c = *str++) != '\0') {
		switch (c) {
		case '\n':
			osd_col = 0;
			osd_row++;
			break;
		default:
			str2img_osd_putc(c);
			break;
		}
	}
}
