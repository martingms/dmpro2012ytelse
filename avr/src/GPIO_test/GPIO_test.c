/*
 * GPIO_test.c
 *
 *  Created on: Oct 25, 2012
 *      Author: mads
 */

#include "GPIO_test.h"
#include "gpio.h"
#include "serial.h"
#include "compiler.h"
#include "board.h"
#include "intc.h"
#include "power_clocks_lib.h"

#define PINCOUNT AVR32_GPIO_NUMBER_OF_PINS

/*! \brief Checks pins for short-circuits.
 * \return error code, 0 = success, else error / first pin that was wrong.
 */
int test_all_pins(void){
	char eVal[PINCOUNT],errors[PINCOUNT];
	int a;
	for(a=0; a < PINCOUNT; a++)eVal[a]=errors[a]=0;
	enable_all_pins();
	while(1){
		//Set pin out to FPGA high
		gpio_set_gpio_pin(35);
		check_pins(eVal,errors);//waste some time
		//Check response from FPGA
		if(gpio_get_pin_value(25)==1)gpio_set_gpio_pin(52);
		else gpio_clr_gpio_pin(52);

		//Set pin out to FPGA low
		gpio_clr_gpio_pin(35);
		check_pins(eVal,errors);//waste some time
		//Check response from FPGA
		if(gpio_get_pin_value(25)==0)gpio_set_gpio_pin(52);
		else gpio_clr_gpio_pin(52);


	}
	return 0;
	int err = check_pins(eVal,errors);

	for(a=52; a <= 55; a++){
		eVal[a]=1;
		gpio_set_gpio_pin(a);
		err = check_pins(eVal,errors);
		gpio_clr_gpio_pin(a);
		eVal[a]=0;
	}


	for(a=0; a < PINCOUNT; a++){

		if(errors[a]&&a!=2&&a!=7&a!=31&&a!=32)gpio_set_gpio_pin(52);
	}


	return 0;
}

/*! \brief Checks if the pins have the expected values.
 * \param eVal the expected values
 * \return error code, 0 = success, else error / first pin that was wrong.
 */
int check_pins(char *eVal, char *errors){
	int a;
	int returnVal = 0;
	for(a=52; a <= 55; a++){
		if(gpio_get_pin_value(a)!=eVal[a]){
			errors[a]=1;
			returnVal=1;
		}
	}
	return returnVal;
}

/*! \brief Enables all the pins and pulls them down.
 */
void enable_all_pins(void){
	int a;
	for(a=0; a<PINCOUNT; a++){
		gpio_enable_gpio_pin(a);
		//gpio_enable_pin_pull_up(a);
		//gpio_disable_pin_pull_up(a);
		gpio_clr_gpio_pin(a);
	}
}
