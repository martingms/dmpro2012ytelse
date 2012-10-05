/* This header file is part of the ATMEL AVR-UC3-SoftwareFramework-1.7.0 Release */

/*This file has been prepared for Doxygen automatic documentation generation.*/
/*! \file *********************************************************************
 *
 * \brief FAT 12/16/32 Unicode Service.
 *
 * This file defines a useful set of functions for decode string unicode from ASCII, UTF8, UTF16
 *
 * \author               Atmel Corporation: http://www.atmel.com \n
 *                       Support and FAQ: http://support.atmel.no/
 *
 *****************************************************************************/

/* Copyright (c) 2009 Atmel Corporation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 * from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an Atmel
 * AVR product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE
 *
 */
#ifndef _UNICODE_H_
#define _UNICODE_H_

//_____ D E F I N I T I O N S _______________________________________________

#define UNI_MAX_HEADER_SIZE   3
#define UNI_MAX_UTF8_SIZE     3

//! \name Define a ID for each text format
//! PS: This defines numbers are extract of ID3 norms
//! @{
#define UNI_TYPE_UNKNOWN      0xFF
#define UNI_TYPE_ASCII        0x00
#define UNI_TYPE_UTF16LE      0x01 // unicode endianess known: little-endian
#define UNI_TYPE_UTF16BE      0x02 // unicode endianess known: big-endian
#define UNI_TYPE_UTF8         0x03
//! @}


//! Detect the text format via a header (3 bytes)
//!
//! @param  header      header to analyse (array of 3B)
//!
//! @return text format identifier
//!
U8    unicode_header_scan( U8* header );

//! Return the header corresponding at text format identifier
//!
//! @param  txt_format  UNI_TYPE_UTF8, UNI_TYPE_UTF16BE, UNI_TYPE_UTF16LE, UNI_TYPE_ASCII
//! @param  header      header to fill (array of 3B)
//!
//! @return the size of header
//!
U8    unicode_header_get( U8* header, U8 txt_format );

//! Conversion UTF-8 to unicode
//!
//! @param  utf8     array with utf8 codes (array of 3B max)
//! @param  unicode  pointer used to store the character unicode decoded
//!
//! @return the size of UTF8 decoded
//!
U8    utf8_to_unicode( U8* utf8, U16* unicode );


#endif  // _UNICODE_H_

