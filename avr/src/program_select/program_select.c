#include "program_select.h"
#include "button.h"
#include "fpga.h"
#include "serial.h"

#define UP_BUTTON 1
#define DOWN_BUTTON 2
#define ENTER_BUTTON 4

#define SELECT_PROGRAM_MENU 1
#define SELECT_DATA_MENU 2
#define UPLOADING_PROGRAM_MENU 3
#define UPLOADING_DATA_MENU 4

struct menu_item {
	char *name;		// Name of menu item
	U32 *file;		// Pointer to file
	size_t size;	// Size of file
};


U32 *selected_program;
size_t selected_program_size;
U32 *selected_data;
size_t selected_data_size;

int current_menu;
struct menu_item *menu;
int menu_item_selected;
int menu_size;

bool uploading;

void button_push(U8 button) {
	if (uploading) return;

	if ((button & UP_BUTTON) && (menu_item_selected > 0)) {
		menu_item_selected--;
		//TODO refresh screen
	}
	if ((button & DOWN_BUTTON) && (menu_item_selected+1 < menu_size)) {
		menu_item_selected++;
		//TODO refresh screen
	}
	if (button & ENTER_BUTTON) {
		enter_pushed();
	}
}

void program_select_start(void) {
	uploading = FALSE;
	current_menu = SELECT_PROGRAM_MENU;
	button_reg_listener(&button_push);
	load_menu();
}

void load_menu(void) {
	switch (current_menu) {
		case SELECT_PROGRAM_MENU:
		{
			menu_item_selected = 0;
			//TODO finn alle program og list dem opp
			break;
		}
		case SELECT_DATA_MENU:
		{
			menu_item_selected = 0;
			//TODO finn alle data og list dem opp
			break;
		}
		case UPLOADING_PROGRAM_MENU:
		{
			//TODO skriv til skjermen "Loading program..."
			seprintf("Loading program...\n");
			break;
		}
		case UPLOADING_DATA_MENU:
		{
			//TODO skriv til skjermen "Loading data..."
			seprintf("Loading data...\n");
			break;
		}
		default:
			break;
	}

}

void enter_pushed(void) {
	if (current_menu == SELECT_PROGRAM_MENU) {
		selected_program = menu[menu_item_selected].file;
		selected_program_size = menu[menu_item_selected].size;

		current_menu = SELECT_DATA_MENU;
		load_menu();
		return;
	}

	if (current_menu==SELECT_DATA_MENU){
		selected_data = menu[menu_item_selected].file;
		selected_data_size = menu[menu_item_selected].size;

		// Uploads to FPGA
		uploading = TRUE;

		current_menu = UPLOADING_PROGRAM_MENU;
		load_menu();
		fpga_send_program(selected_program, selected_program_size);

		if (selected_data_size > 0) {
			current_menu = UPLOADING_DATA_MENU;
			load_menu();
			fpga_send_data(selected_data, selected_data_size);
		}

		// Runs FPGA
		fpga_set_state(FPGA_STATE_RUN);

		current_menu = SELECT_PROGRAM_MENU;
		load_menu();

		uploading = FALSE;
	}
	return;
}
