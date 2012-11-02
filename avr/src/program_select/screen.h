#ifndef SCREEN_H_
#define SCREEN_H_

#include "compiler.h"


enum data_type {DATA, PROGRAM};

void draw_bitmap();
void send_to_screen(void);
void load_screen_data(enum data_type type);
void move_cursor(S8 direction);

#endif
