/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2024
 * Generated linker script file for LPC54618J512
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.5.0 [Build 7232] [2022-01-11] on 03-May-2024, 1:39:42 PM
 */

MEMORY
{
  /* Define each memory region */
  PROGRAM_FLASH (rx) : ORIGIN = 0x0, LENGTH = 0x80000 /* 512K bytes (alias Flash) */  
  SRAM_UPPER (rwx) : ORIGIN = 0x20000000, LENGTH = 0x28000 /* 160K bytes (alias RAM) */  
  SRAMX (rwx) : ORIGIN = 0x4000000, LENGTH = 0x8000 /* 32K bytes (alias RAM2) */  
  USB_RAM (rwx) : ORIGIN = 0x40100000, LENGTH = 0x2000 /* 8K bytes (alias RAM3) */  
  SD_RAM_262144 (rwx) : ORIGIN = 0xa0000000, LENGTH = 0x2000000 /* 32M bytes (alias RAM4) */  
  RAM_00 (rwx) : ORIGIN = 0x80000000, LENGTH = 0x800000 /* 8M bytes (alias RAM5) */  
  RAM_01 (rwx) : ORIGIN = 0x88000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM6) */  
  RAM_02 (rwx) : ORIGIN = 0x90000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM7) */  
  RAM_03 (rwx) : ORIGIN = 0x98000000, LENGTH = 0x4000000 /* 64M bytes (alias RAM8) */  
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
  __base_SD_RAM_262144 = 0xa0000000  ; /* SD_RAM_262144 */  
  __base_RAM4 = 0xa0000000 ; /* RAM4 */  
  __top_SD_RAM_262144 = 0xa0000000 + 0x2000000 ; /* 32M bytes */  
  __top_RAM4 = 0xa0000000 + 0x2000000 ; /* 32M bytes */  
  __base_RAM_00 = 0x80000000  ; /* RAM_00 */  
  __base_RAM5 = 0x80000000 ; /* RAM5 */  
  __top_RAM_00 = 0x80000000 + 0x800000 ; /* 8M bytes */  
  __top_RAM5 = 0x80000000 + 0x800000 ; /* 8M bytes */  
  __base_RAM_01 = 0x88000000  ; /* RAM_01 */  
  __base_RAM6 = 0x88000000 ; /* RAM6 */  
  __top_RAM_01 = 0x88000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM6 = 0x88000000 + 0x4000000 ; /* 64M bytes */  
  __base_RAM_02 = 0x90000000  ; /* RAM_02 */  
  __base_RAM7 = 0x90000000 ; /* RAM7 */  
  __top_RAM_02 = 0x90000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM7 = 0x90000000 + 0x4000000 ; /* 64M bytes */  
  __base_RAM_03 = 0x98000000  ; /* RAM_03 */  
  __base_RAM8 = 0x98000000 ; /* RAM8 */  
  __top_RAM_03 = 0x98000000 + 0x4000000 ; /* 64M bytes */  
  __top_RAM8 = 0x98000000 + 0x4000000 ; /* 64M bytes */  
