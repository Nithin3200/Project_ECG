/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2022
 * Generated linker script file for LPC54618J512
 * Created from linkscript.ldt by FMCreateLinkLibraries
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.5.1 [Build 7266] [2022-04-13] on 13-Jul-2022, 8:36:07 PM
 */

INCLUDE "XXXXLPC54618J512_DG400_1DriverUSBworking_22_11_2021_18_17Final_Debug_library.ld"
INCLUDE "XXXXLPC54618J512_DG400_1DriverUSBworking_22_11_2021_18_17Final_Debug_memory.ld"

ENTRY(ResetISR)

SECTIONS
{
     /* MAIN TEXT SECTION */
    .text : ALIGN(4)
    {
        FILL(0xff)
        __vectors_start__ = ABSOLUTE(.) ;
        KEEP(*(.isr_vector))
        /* Global Section Table */
        . = ALIGN(4) ;
        __section_table_start = .;
        __data_section_table = .;
        LONG(LOADADDR(.data));
        LONG(    ADDR(.data));
        LONG(  SIZEOF(.data));
        LONG(LOADADDR(.data_RAM2));
        LONG(    ADDR(.data_RAM2));
        LONG(  SIZEOF(.data_RAM2));
        LONG(LOADADDR(.data_RAM3));
        LONG(    ADDR(.data_RAM3));
        LONG(  SIZEOF(.data_RAM3));
        LONG(LOADADDR(.data_RAM4));
        LONG(    ADDR(.data_RAM4));
        LONG(  SIZEOF(.data_RAM4));
        LONG(LOADADDR(.data_RAM5));
        LONG(    ADDR(.data_RAM5));
        LONG(  SIZEOF(.data_RAM5));
        LONG(LOADADDR(.data_RAM6));
        LONG(    ADDR(.data_RAM6));
        LONG(  SIZEOF(.data_RAM6));
        LONG(LOADADDR(.data_RAM7));
        LONG(    ADDR(.data_RAM7));
        LONG(  SIZEOF(.data_RAM7));
        LONG(LOADADDR(.data_RAM8));
        LONG(    ADDR(.data_RAM8));
        LONG(  SIZEOF(.data_RAM8));
        LONG(LOADADDR(.data_RAM9));
        LONG(    ADDR(.data_RAM9));
        LONG(  SIZEOF(.data_RAM9));
        LONG(LOADADDR(.data_RAM10));
        LONG(    ADDR(.data_RAM10));
        LONG(  SIZEOF(.data_RAM10));
        LONG(LOADADDR(.data_RAM11));
        LONG(    ADDR(.data_RAM11));
        LONG(  SIZEOF(.data_RAM11));
        __data_section_table_end = .;
        __bss_section_table = .;
        LONG(    ADDR(.bss));
        LONG(  SIZEOF(.bss));
        LONG(    ADDR(.bss_RAM2));
        LONG(  SIZEOF(.bss_RAM2));
        LONG(    ADDR(.bss_RAM3));
        LONG(  SIZEOF(.bss_RAM3));
        LONG(    ADDR(.bss_RAM4));
        LONG(  SIZEOF(.bss_RAM4));
        LONG(    ADDR(.bss_RAM5));
        LONG(  SIZEOF(.bss_RAM5));
        LONG(    ADDR(.bss_RAM6));
        LONG(  SIZEOF(.bss_RAM6));
        LONG(    ADDR(.bss_RAM7));
        LONG(  SIZEOF(.bss_RAM7));
        LONG(    ADDR(.bss_RAM8));
        LONG(  SIZEOF(.bss_RAM8));
        LONG(    ADDR(.bss_RAM9));
        LONG(  SIZEOF(.bss_RAM9));
        LONG(    ADDR(.bss_RAM10));
        LONG(  SIZEOF(.bss_RAM10));
        LONG(    ADDR(.bss_RAM11));
        LONG(  SIZEOF(.bss_RAM11));
        __bss_section_table_end = .;
        __section_table_end = . ;
        /* End of Global Section Table */

        *(.after_vectors*)

       *(.text*)
       *(.rodata .rodata.* .constdata .constdata.*)
       . = ALIGN(4);
    } > PROGRAM_FLASH
 
    _etext = .;
        
 
    /* USB_RAM */
    .m_usb_data (NOLOAD) :
    {
        *(m_usb_global)
    } > USB_RAM AT> USB_RAM
    /* DATA section for SRAMX */

    .data_RAM2 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM2 = .) ;
        PROVIDE(__start_data_SRAMX = .) ;
        *(.ramfunc.$RAM2)
        *(.ramfunc.$SRAMX)
        *(.data.$RAM2)
        *(.data.$SRAMX)
        *(.data.$RAM2.*)
        *(.data.$SRAMX.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM2 = .) ;
        PROVIDE(__end_data_SRAMX = .) ;
     } > SRAMX AT>PROGRAM_FLASH

    /* DATA section for USB_RAM */

    .data_RAM3 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM3 = .) ;
        PROVIDE(__start_data_USB_RAM = .) ;
        *(.ramfunc.$RAM3)
        *(.ramfunc.$USB_RAM)
        *(.data.$RAM3)
        *(.data.$USB_RAM)
        *(.data.$RAM3.*)
        *(.data.$USB_RAM.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM3 = .) ;
        PROVIDE(__end_data_USB_RAM = .) ;
     } > USB_RAM AT>PROGRAM_FLASH

    /* DATA section for SD_RAM */

    .data_RAM4 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM4 = .) ;
        PROVIDE(__start_data_SD_RAM = .) ;
        *(.ramfunc.$RAM4)
        *(.ramfunc.$SD_RAM)
        *(.data.$RAM4)
        *(.data.$SD_RAM)
        *(.data.$RAM4.*)
        *(.data.$SD_RAM.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM4 = .) ;
        PROVIDE(__end_data_SD_RAM = .) ;
     } > SD_RAM AT>PROGRAM_FLASH

    /* DATA section for SD_RAM_65536 */

    .data_RAM5 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM5 = .) ;
        PROVIDE(__start_data_SD_RAM_65536 = .) ;
        *(.ramfunc.$RAM5)
        *(.ramfunc.$SD_RAM_65536)
        *(.data.$RAM5)
        *(.data.$SD_RAM_65536)
        *(.data.$RAM5.*)
        *(.data.$SD_RAM_65536.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM5 = .) ;
        PROVIDE(__end_data_SD_RAM_65536 = .) ;
     } > SD_RAM_65536 AT>PROGRAM_FLASH

    /* DATA section for SD_RAM_131072 */

    .data_RAM6 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM6 = .) ;
        PROVIDE(__start_data_SD_RAM_131072 = .) ;
        *(.ramfunc.$RAM6)
        *(.ramfunc.$SD_RAM_131072)
        *(.data.$RAM6)
        *(.data.$SD_RAM_131072)
        *(.data.$RAM6.*)
        *(.data.$SD_RAM_131072.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM6 = .) ;
        PROVIDE(__end_data_SD_RAM_131072 = .) ;
     } > SD_RAM_131072 AT>PROGRAM_FLASH

    /* DATA section for SD_RAM_131072_65536 */

    .data_RAM7 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM7 = .) ;
        PROVIDE(__start_data_SD_RAM_131072_65536 = .) ;
        *(.ramfunc.$RAM7)
        *(.ramfunc.$SD_RAM_131072_65536)
        *(.data.$RAM7)
        *(.data.$SD_RAM_131072_65536)
        *(.data.$RAM7.*)
        *(.data.$SD_RAM_131072_65536.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM7 = .) ;
        PROVIDE(__end_data_SD_RAM_131072_65536 = .) ;
     } > SD_RAM_131072_65536 AT>PROGRAM_FLASH

    /* DATA section for RAM_00 */

    .data_RAM8 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM8 = .) ;
        PROVIDE(__start_data_RAM_00 = .) ;
        *(.ramfunc.$RAM8)
        *(.ramfunc.$RAM_00)
        *(.data.$RAM8)
        *(.data.$RAM_00)
        *(.data.$RAM8.*)
        *(.data.$RAM_00.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM8 = .) ;
        PROVIDE(__end_data_RAM_00 = .) ;
     } > RAM_00 AT>PROGRAM_FLASH

    /* DATA section for RAM_01 */

    .data_RAM9 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM9 = .) ;
        PROVIDE(__start_data_RAM_01 = .) ;
        *(.ramfunc.$RAM9)
        *(.ramfunc.$RAM_01)
        *(.data.$RAM9)
        *(.data.$RAM_01)
        *(.data.$RAM9.*)
        *(.data.$RAM_01.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM9 = .) ;
        PROVIDE(__end_data_RAM_01 = .) ;
     } > RAM_01 AT>PROGRAM_FLASH

    /* DATA section for RAM_02 */

    .data_RAM10 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM10 = .) ;
        PROVIDE(__start_data_RAM_02 = .) ;
        *(.ramfunc.$RAM10)
        *(.ramfunc.$RAM_02)
        *(.data.$RAM10)
        *(.data.$RAM_02)
        *(.data.$RAM10.*)
        *(.data.$RAM_02.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM10 = .) ;
        PROVIDE(__end_data_RAM_02 = .) ;
     } > RAM_02 AT>PROGRAM_FLASH

    /* DATA section for RAM_03 */

    .data_RAM11 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM11 = .) ;
        PROVIDE(__start_data_RAM_03 = .) ;
        *(.ramfunc.$RAM11)
        *(.ramfunc.$RAM_03)
        *(.data.$RAM11)
        *(.data.$RAM_03)
        *(.data.$RAM11.*)
        *(.data.$RAM_03.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM11 = .) ;
        PROVIDE(__end_data_RAM_03 = .) ;
     } > RAM_03 AT>PROGRAM_FLASH

    /* MAIN DATA SECTION */
    .uninit_RESERVED (NOLOAD) : ALIGN(4)
    {
        _start_uninit_RESERVED = .;
        KEEP(*(.bss.$RESERVED*))
       . = ALIGN(4) ;
        _end_uninit_RESERVED = .;
    } > SRAM_UPPER AT> SRAM_UPPER

    /* Main DATA section (SRAM_UPPER) */
    .data : ALIGN(4)
    {
       FILL(0xff)
       _data = . ;
       PROVIDE(__start_data_RAM = .) ;
       PROVIDE(__start_data_SRAM_UPPER = .) ;
       *(vtable)
       *(.ramfunc*)
       KEEP(*(CodeQuickAccess))
       KEEP(*(DataQuickAccess))
       *(RamFunction)
       *(.data*)
       . = ALIGN(4) ;
       _edata = . ;
       PROVIDE(__end_data_RAM = .) ;
       PROVIDE(__end_data_SRAM_UPPER = .) ;
    } > SRAM_UPPER AT>PROGRAM_FLASH

    /* BSS section for SRAMX */
    .bss_RAM2 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM2 = .) ;
       PROVIDE(__start_bss_SRAMX = .) ;
       *(.bss.$RAM2)
       *(.bss.$SRAMX)
       *(.bss.$RAM2.*)
       *(.bss.$SRAMX.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM2 = .) ;
       PROVIDE(__end_bss_SRAMX = .) ;
    } > SRAMX AT> SRAMX

    /* BSS section for USB_RAM */
    .bss_RAM3 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM3 = .) ;
       PROVIDE(__start_bss_USB_RAM = .) ;
       *(.bss.$RAM3)
       *(.bss.$USB_RAM)
       *(.bss.$RAM3.*)
       *(.bss.$USB_RAM.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM3 = .) ;
       PROVIDE(__end_bss_USB_RAM = .) ;
    } > USB_RAM AT> USB_RAM

    /* BSS section for SD_RAM */
    .bss_RAM4 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM4 = .) ;
       PROVIDE(__start_bss_SD_RAM = .) ;
       *(.bss.$RAM4)
       *(.bss.$SD_RAM)
       *(.bss.$RAM4.*)
       *(.bss.$SD_RAM.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM4 = .) ;
       PROVIDE(__end_bss_SD_RAM = .) ;
    } > SD_RAM AT> SD_RAM

    /* BSS section for SD_RAM_65536 */
    .bss_RAM5 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM5 = .) ;
       PROVIDE(__start_bss_SD_RAM_65536 = .) ;
       *(.bss.$RAM5)
       *(.bss.$SD_RAM_65536)
       *(.bss.$RAM5.*)
       *(.bss.$SD_RAM_65536.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM5 = .) ;
       PROVIDE(__end_bss_SD_RAM_65536 = .) ;
    } > SD_RAM_65536 AT> SD_RAM_65536

    /* BSS section for SD_RAM_131072 */
    .bss_RAM6 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM6 = .) ;
       PROVIDE(__start_bss_SD_RAM_131072 = .) ;
       *(.bss.$RAM6)
       *(.bss.$SD_RAM_131072)
       *(.bss.$RAM6.*)
       *(.bss.$SD_RAM_131072.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM6 = .) ;
       PROVIDE(__end_bss_SD_RAM_131072 = .) ;
    } > SD_RAM_131072 AT> SD_RAM_131072

    /* BSS section for SD_RAM_131072_65536 */
    .bss_RAM7 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM7 = .) ;
       PROVIDE(__start_bss_SD_RAM_131072_65536 = .) ;
       *(.bss.$RAM7)
       *(.bss.$SD_RAM_131072_65536)
       *(.bss.$RAM7.*)
       *(.bss.$SD_RAM_131072_65536.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM7 = .) ;
       PROVIDE(__end_bss_SD_RAM_131072_65536 = .) ;
    } > SD_RAM_131072_65536 AT> SD_RAM_131072_65536

    /* BSS section for RAM_00 */
    .bss_RAM8 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM8 = .) ;
       PROVIDE(__start_bss_RAM_00 = .) ;
       *(.bss.$RAM8)
       *(.bss.$RAM_00)
       *(.bss.$RAM8.*)
       *(.bss.$RAM_00.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM8 = .) ;
       PROVIDE(__end_bss_RAM_00 = .) ;
    } > RAM_00 AT> RAM_00

    /* BSS section for RAM_01 */
    .bss_RAM9 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM9 = .) ;
       PROVIDE(__start_bss_RAM_01 = .) ;
       *(.bss.$RAM9)
       *(.bss.$RAM_01)
       *(.bss.$RAM9.*)
       *(.bss.$RAM_01.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM9 = .) ;
       PROVIDE(__end_bss_RAM_01 = .) ;
    } > RAM_01 AT> RAM_01

    /* BSS section for RAM_02 */
    .bss_RAM10 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM10 = .) ;
       PROVIDE(__start_bss_RAM_02 = .) ;
       *(.bss.$RAM10)
       *(.bss.$RAM_02)
       *(.bss.$RAM10.*)
       *(.bss.$RAM_02.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM10 = .) ;
       PROVIDE(__end_bss_RAM_02 = .) ;
    } > RAM_02 AT> RAM_02

    /* BSS section for RAM_03 */
    .bss_RAM11 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM11 = .) ;
       PROVIDE(__start_bss_RAM_03 = .) ;
       *(.bss.$RAM11)
       *(.bss.$RAM_03)
       *(.bss.$RAM11.*)
       *(.bss.$RAM_03.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM11 = .) ;
       PROVIDE(__end_bss_RAM_03 = .) ;
    } > RAM_03 AT> RAM_03

    /* MAIN BSS SECTION */
    .bss : ALIGN(4)
    {
        _bss = .;
        PROVIDE(__start_bss_RAM = .) ;
        PROVIDE(__start_bss_SRAM_UPPER = .) ;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4) ;
        _ebss = .;
        PROVIDE(__end_bss_RAM = .) ;
        PROVIDE(__end_bss_SRAM_UPPER = .) ;
        PROVIDE(end = .);
    } > SRAM_UPPER AT> SRAM_UPPER

    /* NOINIT section for SRAMX */
    .noinit_RAM2 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM2 = .) ;
       PROVIDE(__start_noinit_SRAMX = .) ;
       *(.noinit.$RAM2)
       *(.noinit.$SRAMX)
       *(.noinit.$RAM2.*)
       *(.noinit.$SRAMX.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM2 = .) ;
       PROVIDE(__end_noinit_SRAMX = .) ;
    } > SRAMX AT> SRAMX

    /* NOINIT section for USB_RAM */
    .noinit_RAM3 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM3 = .) ;
       PROVIDE(__start_noinit_USB_RAM = .) ;
       *(.noinit.$RAM3)
       *(.noinit.$USB_RAM)
       *(.noinit.$RAM3.*)
       *(.noinit.$USB_RAM.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM3 = .) ;
       PROVIDE(__end_noinit_USB_RAM = .) ;
    } > USB_RAM AT> USB_RAM

    /* NOINIT section for SD_RAM */
    .noinit_RAM4 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM4 = .) ;
       PROVIDE(__start_noinit_SD_RAM = .) ;
       *(.noinit.$RAM4)
       *(.noinit.$SD_RAM)
       *(.noinit.$RAM4.*)
       *(.noinit.$SD_RAM.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM4 = .) ;
       PROVIDE(__end_noinit_SD_RAM = .) ;
    } > SD_RAM AT> SD_RAM

    /* NOINIT section for SD_RAM_65536 */
    .noinit_RAM5 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM5 = .) ;
       PROVIDE(__start_noinit_SD_RAM_65536 = .) ;
       *(.noinit.$RAM5)
       *(.noinit.$SD_RAM_65536)
       *(.noinit.$RAM5.*)
       *(.noinit.$SD_RAM_65536.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM5 = .) ;
       PROVIDE(__end_noinit_SD_RAM_65536 = .) ;
    } > SD_RAM_65536 AT> SD_RAM_65536

    /* NOINIT section for SD_RAM_131072 */
    .noinit_RAM6 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM6 = .) ;
       PROVIDE(__start_noinit_SD_RAM_131072 = .) ;
       *(.noinit.$RAM6)
       *(.noinit.$SD_RAM_131072)
       *(.noinit.$RAM6.*)
       *(.noinit.$SD_RAM_131072.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM6 = .) ;
       PROVIDE(__end_noinit_SD_RAM_131072 = .) ;
    } > SD_RAM_131072 AT> SD_RAM_131072

    /* NOINIT section for SD_RAM_131072_65536 */
    .noinit_RAM7 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM7 = .) ;
       PROVIDE(__start_noinit_SD_RAM_131072_65536 = .) ;
       *(.noinit.$RAM7)
       *(.noinit.$SD_RAM_131072_65536)
       *(.noinit.$RAM7.*)
       *(.noinit.$SD_RAM_131072_65536.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM7 = .) ;
       PROVIDE(__end_noinit_SD_RAM_131072_65536 = .) ;
    } > SD_RAM_131072_65536 AT> SD_RAM_131072_65536

    /* NOINIT section for RAM_00 */
    .noinit_RAM8 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM8 = .) ;
       PROVIDE(__start_noinit_RAM_00 = .) ;
       *(.noinit.$RAM8)
       *(.noinit.$RAM_00)
       *(.noinit.$RAM8.*)
       *(.noinit.$RAM_00.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM8 = .) ;
       PROVIDE(__end_noinit_RAM_00 = .) ;
    } > RAM_00 AT> RAM_00

    /* NOINIT section for RAM_01 */
    .noinit_RAM9 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM9 = .) ;
       PROVIDE(__start_noinit_RAM_01 = .) ;
       *(.noinit.$RAM9)
       *(.noinit.$RAM_01)
       *(.noinit.$RAM9.*)
       *(.noinit.$RAM_01.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM9 = .) ;
       PROVIDE(__end_noinit_RAM_01 = .) ;
    } > RAM_01 AT> RAM_01

    /* NOINIT section for RAM_02 */
    .noinit_RAM10 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM10 = .) ;
       PROVIDE(__start_noinit_RAM_02 = .) ;
       *(.noinit.$RAM10)
       *(.noinit.$RAM_02)
       *(.noinit.$RAM10.*)
       *(.noinit.$RAM_02.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM10 = .) ;
       PROVIDE(__end_noinit_RAM_02 = .) ;
    } > RAM_02 AT> RAM_02

    /* NOINIT section for RAM_03 */
    .noinit_RAM11 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM11 = .) ;
       PROVIDE(__start_noinit_RAM_03 = .) ;
       *(.noinit.$RAM11)
       *(.noinit.$RAM_03)
       *(.noinit.$RAM11.*)
       *(.noinit.$RAM_03.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM11 = .) ;
       PROVIDE(__end_noinit_RAM_03 = .) ;
    } > RAM_03 AT> RAM_03

    /* DEFAULT NOINIT SECTION */
    .noinit (NOLOAD): ALIGN(4)
    {
        _noinit = .;
        PROVIDE(__start_noinit_RAM = .) ;
        PROVIDE(__start_noinit_SRAM_UPPER = .) ;
        *(.noinit*)
         . = ALIGN(4) ;
        _end_noinit = .;
       PROVIDE(__end_noinit_RAM = .) ;
       PROVIDE(__end_noinit_SRAM_UPPER = .) ;        
    } > SRAM_UPPER AT> SRAM_UPPER

    /*
     * for exception handling/unwind - some Newlib functions (in common
     * with C++ and STDC++) use this.
     */
    .ARM.extab : ALIGN(4)
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > PROGRAM_FLASH

    .ARM.exidx : ALIGN(4)
    {
        __exidx_start = .;
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
        __exidx_end = .;
    } > PROGRAM_FLASH

    /* Reserve and place Heap within memory map */
    _HeapSize = 0x1000;
    .heap :  ALIGN(4)
    {
        _pvHeapStart = .;
        . += _HeapSize;
        . = ALIGN(4);
        _pvHeapLimit = .;
    } > SRAM_UPPER

     _StackSize = 0x1000;
     /* Reserve space in memory for Stack */
    .heap2stackfill  :
    {
        . += _StackSize;
    } > SRAM_UPPER
    /* Locate actual Stack in memory map */
    .stack ORIGIN(SRAM_UPPER) + LENGTH(SRAM_UPPER) - _StackSize - 0:  ALIGN(4)
    {
        _vStackBase = .;
        . = ALIGN(4);
        _vStackTop = . + _StackSize;
    } > SRAM_UPPER

    /* ## Create checksum value (used in startup) ## */
    PROVIDE(__valid_user_code_checksum = 0 - 
                                         (_vStackTop 
                                         + (ResetISR + 1) 
                                         + (NMI_Handler + 1) 
                                         + (HardFault_Handler + 1) 
                                         + (( DEFINED(MemManage_Handler) ? MemManage_Handler : 0 ) + 1)   /* MemManage_Handler may not be defined */
                                         + (( DEFINED(BusFault_Handler) ? BusFault_Handler : 0 ) + 1)     /* BusFault_Handler may not be defined */
                                         + (( DEFINED(UsageFault_Handler) ? UsageFault_Handler : 0 ) + 1) /* UsageFault_Handler may not be defined */
                                         ) );

    /* Provide basic symbols giving location and size of main text
     * block, including initial values of RW data sections. Note that
     * these will need extending to give a complete picture with
     * complex images (e.g multiple Flash banks).
     */
    _image_start = LOADADDR(.text);
    _image_end = LOADADDR(.data) + SIZEOF(.data);
    _image_size = _image_end - _image_start;
}