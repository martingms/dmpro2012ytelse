#ifndef MMC_INCLUDE_GUARD_H
#define MMC_INCLUDE_GUARD_H

#include "ctrl_access.h"
#include "../freqs.h"

// Initializes the SPI subsystem, selects SPI as GPIO function
// and does some other SPI initialization needed before SD card
// can be used either directly or by the file system
void mmc_init();

// mmc_init must be called before this one. Returns
// one of:
// 1: CTRL_GOOD 		< Ready for use
// 2: CTRL_FAIL 		< An error occurred.
// 3: CTRL_NO_PRESENT 	< Unplugged
// 4: CTRL_BUSY      	< Memory not initialized or changed.
Ctrl_status mmc_status();

#endif
