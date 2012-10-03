#include "avr32/io.h"
#include "compiler.h"
#include "board.h"
#include "power_clocks_lib.h"
#include "gpio.h"
#include "usart.h"

#define EXAMPLE_TARGET_PBACLK_FREQ_HZ FOSC0
#define EXAMPLE_USART                 (&AVR32_USART1)
#define EXAMPLE_USART_RX_PIN          AVR32_USART1_RXD_0_0_PIN
#define EXAMPLE_USART_RX_FUNCTION     AVR32_USART1_RXD_0_0_FUNCTION
#define EXAMPLE_USART_TX_PIN          AVR32_USART1_TXD_0_0_PIN
#define EXAMPLE_USART_TX_FUNCTION     AVR32_USART1_TXD_0_0_FUNCTION

int main(void)
{
  // Configure Osc0 in crystal mode (i.e. use of an external crystal source, with
  // frequency FOSC0) with an appropriate startup time then switch the main clock
  // source to Osc0.
  pcl_switch_to_osc(PCL_OSC0, FOSC0, OSC0_STARTUP);

    static const gpio_map_t USART_GPIO_MAP =
    {
        {EXAMPLE_USART_RX_PIN, EXAMPLE_USART_RX_FUNCTION},
        {EXAMPLE_USART_TX_PIN, EXAMPLE_USART_TX_FUNCTION}
    };

    // USART options.
    static const usart_options_t USART_OPTIONS =
    {
        .baudrate     = 38400,
        .charlength   = 8,
        .paritytype   = USART_NO_PARITY,
        .stopbits     = USART_1_STOPBIT,
        .channelmode  = USART_NORMAL_CHMODE
    };

    // Assign GPIO to USART.
    gpio_enable_module(USART_GPIO_MAP,
            sizeof(USART_GPIO_MAP) / sizeof(USART_GPIO_MAP[0]));

    // Initialize USART in RS232 mode.
    usart_init_rs232(EXAMPLE_USART, &USART_OPTIONS, EXAMPLE_TARGET_PBACLK_FREQ_HZ);

    // Hello world!
    usart_write_line(EXAMPLE_USART, "Hello, this is the AVR UC3 MCU saying hello! (press enter)\r\n");

    // Press enter to continue.
    while (usart_get_echo_line(EXAMPLE_USART) == USART_FAILURE);  // Get and echo characters until end of line.

    usart_write_line(EXAMPLE_USART, "Goodbye.\r\n");

    while(!usart_tx_empty(EXAMPLE_USART));
    while (true);
}

//
//
//
///********************************************************
// Name          : main.c
// Author        : Nomen Nescio
// Copyright     : Not really
// Description   : EVK1100 template
// **********************************************************/
//
////_____  I N C L U D E S ___________________________________________________
//
// #include "compiler.h"
// #include "board.h"
// #include "gpio.h"
// #include "pm.h"
// #include "intc.h"
//
//#include "serial/serial.h"
//#include "debug/debug.h"
//
//
// //--------------------------------------------------------------------------
// __attribute__((__interrupt__))
// static void int_handler_port1_line0 (void)
// {
//   if( gpio_get_pin_interrupt_flag( GPIO_PUSH_BUTTON_0 ) )
//   {      // PB2 generated the interrupt.
//       LED_Toggle( LED1 );
//       // Clear the interrupt flag of the pin PB2 is mapped to.
//       gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_0);
//   }
//   if( gpio_get_pin_interrupt_flag( GPIO_PUSH_BUTTON_1 ) )
//   {      // PB3 generated the interrupt.
//      LED_Toggle( LED2 );
//      // Clear the interrupt flag of the pin PB3 is mapped to.
//       gpio_clear_pin_interrupt_flag(GPIO_PUSH_BUTTON_1);
//   }
// }
// //--------------------------------------------------------------------------
//
//
// //--------------------------------------------------------------------------
// int main(void)
// {
//    int i = 0;
//   int j = 0;
//   int x = 0;
//
//
//   // switch to oscillator 0
//   pm_switch_to_osc0(&AVR32_PM, FOSC0, OSC0_STARTUP);
//
//   // Set all leds initial state.
//   LED_Off( LED0 | LED1 | LED2 | LED3 );
//
//   // GPIO config
//   // configure push button to produce IT on input change
//   // NOTE 1: GPIO_PUSH_BUTTON_0 & GPIO_PUSH_BUTTON_1 are defines you can find in
//   // evk1101.h under <sw framework>/BOARDS/EVK1101/.
//   // See the implementation of gpio_enable_pin_interrupt() in gpio.c under
//   // <sw framework>/DRIVERS/GPIO/.
//   gpio_enable_pin_interrupt(GPIO_PUSH_BUTTON_0 , GPIO_PIN_CHANGE);   // PB2
//   gpio_enable_pin_interrupt(GPIO_PUSH_BUTTON_1 , GPIO_PIN_CHANGE);   // PB3
//   // NOTE 2: GPIO_PUSH_BUTTON_0 & GPIO_PUSH_BUTTON_1 are in the same port.
//   // (i.e. port 1, cf section 21.5 of the UC3B0256 datasheet for the computation
//   // of a port knowing the pin, and see the evk1101 schematics (or the evk1101.h
//   // file) + the section 12.8 of the UC3B0256 datasheet to know the pin mapping
//   // of the pushbuttons).
//   // Consider GPIO_PUSH_BUTTON_0 as an example: from evk1101.h, we see that
//   // GPIO_PUSH_BUTTON_0 is AVR32_PIN_PB02. Open the UC3B0256 datasheet, go to
//   // section 12.8, in the array look for pin PB02, we see that it is mapped to
//   // GPIO 34. Using section 21.5, the formula to know the port of a pin is:
//   // GPIO port = floor((GPIO number) / 32), so for GPIO_PUSH_BUTTON_0 we get:
//   // floor(34/32) = 1.
//   // Applying the same reasoning for GPIO_PUSH_BUTTON_1 (which is GPIO 35), we
//   // find that it belongs to port 1 too.
//
//   // NOTE 3: the 32 in the formula 'GPIO port = floor((GPIO number) / 32)'
//   // corresponds to the fact that "The pins are managed as 32-bit ports" (see
//   // section 21.5 second sentence): i.e. every port holds 32 pins max.
//
//   // Interrupts config
//   Disable_global_interrupt ();
//   INTC_init_interrupts ();
//   // register push button handler for PB2 and PB3
//   INTC_register_interrupt( &int_handler_port1_line0, AVR32_GPIO_IRQ_0 + (GPIO_PUSH_BUTTON_0/8), 0);
//   INTC_register_interrupt( &int_handler_port1_line0, AVR32_GPIO_IRQ_0 + (GPIO_PUSH_BUTTON_1/8), 0);
//   // NOTE 4: reading section 21.4.7, paragraph 2:
//   // "In every port there are four interrupt lines connected to the interrupt
//   // controller. Every eigth interrupts in the port are ored together to form an
//   // interrupt line."
//   // So, for example, for port 1 :
//   //    GPIO32->GPIO39 : port 1 interrupt line 0 (for int-of-pin32, int-of-pin33,
//   //                             int-of-pin34, int-of-pin35, int-of-pin36, int-of-pin37,
//   //                            int-of-pin38 and int-of-pin39)
//   //    GPIO40->GPIO47 : port 1 interrupt line 1,
//   //    GPIO48->GPIO55 : port 1 interrupt line 2,
//   //    GPIO56->GPIO63 : port 1 interrupt line 3.
//   //
//   // That is why we use the formula "AVR32_GPIO_IRQ_0 + (GPIO_PUSH_BUTTON_0/8)"
//   // to register the PB2; AVR32_GPIO_IRQ_0 is used as the base interrupt line
//   // and we add '(GPIO_PUSH_BUTTON_0/8)' to register the corresponding interrupt
//   // line.
//
//   // NOTE 5: Since PB2 and PB3 are mapped to the GPIO pin GPIO34 and GPIO35, we
//   // see that they belong to the same interrupt line. Two consequences in this
//   // particular case:
//   //    1) it's no use to register both. We left both registration in the code for
//   //       clarity's sake.
//   //  2) we'll discriminate the cause of the interrupt (PB2 or PB3) in the
//   //      interrupt handler looking at the gpio_port1.ifr register.
//   //      See int_handler_gpio0() implementation.
//
//   Enable_global_interrupt ();
//
//   int uart_ok = serial_init();
//
//
//   while (TRUE)
//   {
//      if  (i == 100000)
//     {
//    	  char c = serial_get();
//    	  if (c == 'a') {
//    	      		  LED_Toggle(LED2);
//    	      		serial_putc('a');
//    	      	  }
//    	  if (c == 'b') {
//    	      		  LED_Toggle(LED3);
//    	      		  serial_putc('b');
//    	      	  }
//       i = 0;
//       if (j == 2)
//       {
//          x = !x;
//         if (x == 0)
//         {
//            LED_Off (LED0);
//
//            if (uart_ok) {
//            	serial_write("off\n");
//            }
//         }
//         else
//         {
//            LED_On (LED0);
//
//            if (uart_ok) {
//            	serial_write("on\n");
//            }
//         }
//         j = 0;
//       }
//       j++;
//     }
//     i++;
//   }
// }
