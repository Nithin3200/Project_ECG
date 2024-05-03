/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2022
 * Generated linker script file for LPC54618J512
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.5.1 [Build 7266] [2022-04-13] on 13-Jul-2022, 8:36:07 PM
 */

MEMORY
{
  /* Define each memory region */
  PROGRAM_FLASH (rx) : ORIGIN = 0x0, LENGTH = 0x80000 /* 512K bytes (alias Flash) */  
  SRAM_UPPER (rwx) : ORIGIN = 0x20000000, LENGTH = 0x28000 /* 160K bytes (alias RAM) */  
  SRAMX (rwx) : ORIGIN = 0x4000000, LENGTH = 0x8000 /* 32K bytes (alias RAM2) */  
  USB_RAM (rwx) : ORIGIN = 0x40100000, LENGTH = 0x2000 /* 8K bytes (alias RAM3) */  
  SD_RAM (rwx) : ORIGIN = 0xa0000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM4) */  
  SD_RAM_65536 (rwx) : ORIGIN = 0xa4000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM5) */  
  SD_RAM_131072 (rwx) : ORIGIN = 0xa8000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM6) */  
  SD_RAM_131072_65536 (rwx) : ORIGIN = 0xac000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM7) */  
  RAM_00 (rwx) : ORIGIN = 0x80000000, LENGTH = 0x800000 /* 8M bytes (alias RAM8) */  
  RAM_01 (rwx) : ORIGIN = 0x88000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM9) */  
  RAM_02 (rwx) : ORIGIN = 0x90000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM10) */  
  RAM_03 (rwx) : ORIGIN = 0x98000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM11) */  
}

  /* Define a symbol for the top of each memory region */
  __base_PROGRAM_FLASH = 0x0  ; /* PROGRAM_FLASH */  
  __base_Flash = 0x0 ; /* Flash */  
  __top_PROGRAM_FLASH = 0x0 + 0x80000 ; /* 512K bytes */  
  __top_Flash = 0x0 + 0x80000 ; /* 512K bytes */  
  __base_SRAM_UPPER = 0x20000000  ; /* SRAM_UPPER */  
  __base_RAM = 0x20000000 ; /* RAM */  
  __top_SRAM_UPPER = 0x20000000 + 0x28000 ; /* 160K bytes */  
  __top_RAM = 0x20000000 + 0x28000 ; /* 160K bytes */  
  __base_SRAMX = 0x4000000  ; /* SRAMX */  
  __base_RAM2 = 0x4000000 ; /* RAM2 */  
  __top_SRAMX = 0x4000000 + 0x8000 ; /* 32K bytes */  
  __top_RAM2 = 0x4000000 + 0x8000 ; /* 32K bytes */  
  __base_USB_RAM = 0x40100000  ; /* USB_RAM */  
  __base_RAM3 = 0x40100000 ; /* RAM3 */  
  __top_USB_RAM = 0x40100000 + 0x2000 ; /* 8K bytes */  
  __top_RAM3 = 0x40100000 + 0x2000 ; /* 8K bytes */  
  __base_SD_RAM = 0xa0000000  ; /* SD_RAM */  
  __base_RAM4 = 0xa0000000 ; /* RAM4 */  
  __top_SD_RAM = 0xa0000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM4 = 0xa0000000 + 0x4000000 ; /* 64M bytes */  
  __base_SD_RAM_65536 = 0xa4000000  ; /* SD_RAM_65536 */  
  __base_RAM5 = 0xa4000000 ; /* RAM5 */  
  __top_SD_RAM_65536 = 0xa4000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM5 = 0xa4000000 + 0x4000000 ; /* 64M bytes */  
  __base_SD_RAM_131072 = 0xa8000000  ; /* SD_RAM_131072 */  
  __base_RAM6 = 0xa8000000 ; /* RAM6 */  
  __top_SD_RAM_131072 = 0xa8000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM6 = 0xa8000000 + 0x4000000 ; /* 64M bytes */  
  __base_SD_RAM_131072_65536 = 0xac000000  ; /* SD_RAM_131072_65536 */  
  __base_RAM7 = 0xac000000 ; /* RAM7 */  
  __top_SD_RAM_131072_65536 = 0xac000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM7 = 0xac000000 + 0x4000000 ; /* 64M bytes */  
  __base_RAM_00 = 0x80000000  ; /* RAM_00 */  
  __base_RAM8 = 0x80000000 ; /* RAM8 */  
  __top_RAM_00 = 0x80000000 + 0x800000 ; /* 8M bytes */  
  __top_RAM8 = 0x80000000 + 0x800000 ; /* 8M bytes */  
  __base_RAM_01 = 0x88000000  ; /* RAM_01 */  
  __base_RAM9 = 0x88000000 ; /* RAM9 */  
  __top_RAM_01 = 0x88000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM9 = 0x88000000 + 0x4000000 ; /* 64M bytes */  
  __base_RAM_02 = 0x90000000  ; /* RAM_02 */  
  __base_RAM10 = 0x90000000 ; /* RAM10 */  
  __top_RAM_02 = 0x90000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM10 = 0x90000000 + 0x4000000 ; /* 64M bytes */  
  __base_RAM_03 = 0x98000000  ; /* RAM_03 */  
  __base_RAM11 = 0x98000000 ; /* RAM11 */  
  __top_RAM_03 = 0x98000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM11 = 0x98000000 + 0x4000000 ; /* 64M bytes */  
