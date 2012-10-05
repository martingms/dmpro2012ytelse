/* This source file is part of the ATMEL AVR-UC3-SoftwareFramework-1.7.0 Release */

/*This file has been prepared for Doxygen automatic documentation generation.*/
/*! \file *********************************************************************
 *
 * \brief FAT 12/16/32 Unicode Service.
 *
 * This file defines a useful set of functions to decode unicode string from ASCII, UTF8, UTF16
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

//_____  I N C L U D E S ___________________________________________________

#include "compiler.h"
#include "unicode.h"


//_____ D E F I N I T I O N S ______________________________________________


//! Detect the text format via a header (3 bytes)
//!
//! @param  header      header to analyse (array of 3B)
//!
//! @return text format identifier
//!
U8    unicode_header_scan( U8* header )
{
   if( (header[0] == 0xEF)
   &&  (header[1] == 0xBB)
   &&  (header[2] == 0xBF) )
   {
      return UNI_TYPE_UTF8;
   }
   if( (header[0] == 0xFE)
   &&  (header[1] == 0xFF) )
   {
      return UNI_TYPE_UTF16BE;
   }
   if( (header[0] == 0xFF)
   &&  (header[1] == 0xFE) )
   {
      return UNI_TYPE_UTF16LE;
   }
   return UNI_TYPE_ASCII;
}


//! Return the header corresponding at text format identifier
//!
//! @param  txt_format  UNI_TYPE_UTF8, UNI_TYPE_UTF16BE, UNI_TYPE_UTF16LE, UNI_TYPE_ASCII
//! @param  header      header to fill (array of 3B)
//!
//! @return the size of header
//!
U8    unicode_header_get( U8* header, U8 txt_format )
{
   switch( txt_format )
   {
      case UNI_TYPE_UTF8:
      header[0] = 0xEF;
      header[1] = 0xBB;
      header[2] = 0xBF;
      return 3;

      case UNI_TYPE_UTF16BE:
      header[0] = 0xFE;
      header[1] = 0xFF;
      return 2;

      case UNI_TYPE_UTF16LE:
      header[0] = 0xFF;
      header[1] = 0xFE;
      return 2;
   }
   return 0;
}

//! Conversion UTF-8 to unicode
//!
//! @param  utf8     array with utf8 codes (array of 3B max)
//! @param  unicode  pointer used to store the character unicode decoded
//!
//! @return the size of UTF8 decoded
//!
U8    utf8_to_unicode( U8* utf8, U16* unicode )
{
   U8 c0,c1,c2;

   // Take 3 bytes
   c0 = utf8[0];
   c1 = utf8[1];
   c2 = utf8[2];
   
   if( 0x00 == (c0 & 0x80) )
   {
      *unicode = c0;
      return 1;
   }
   if( 0xC0 == (c0 & 0xE0) )
   {
      *unicode = ((U16)(c0 & 0x1F)<<6) | ((U16)(c1 & 0x3F));
      return 2;
   }
   if( 0xE0 == (c0 & 0xF0) )
   {
      *unicode = ((U16)(c0 & 0x0F)<<(6+6)) | ((U16)(c1 & 0x3F)<<(6)) | ((U16)(c2 & 0x3F));
      return 3;
   }
   // Error !
   *unicode = c0;
   return 1;
}

