/*
 * Copyright 2016-2020 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
/**
 * @file    LPC54618J512_DG400_1.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "LPC54618.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "board.h"
#include "fsl_lcdc.h"
#include "fsl_gpio.h"
#include <cr_section_macros.h>
#include "pin_mux.h"
#include "fsl_ctimer.h"
#include "fsl_power.h"

#include "GUI.h"
#include "LCD.h"
#include "WM.h"

/*  Standard C Included Files */
#include <stdio.h>
#include <string.h>
#include "board.h"
#include "GUI.h"
#include "GUIDRV_Lin.h"
#include "DIALOG.h"
#include "pin_mux.h"


#include <stdlib.h>
#include "DIALOG.h"
#include "SWIPELIST.h"
#include "GUI.h"

extern GUI_CONST_STORAGE GUI_BITMAP bmBackgroundWindow_480x272;
extern GUI_CONST_STORAGE GUI_BITMAP bmBackground_480x272;
extern GUI_CONST_STORAGE GUI_BITMAP bmSeparator_218x21;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_embOS_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emCompress_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emCrypt_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emFile_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emFTP_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emLib_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emLoad_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emModbus_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emMQTT_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emNet_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emPack_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emSecure_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emSSH_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emSSL_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emUSBD_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emUSBH_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emWeb_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_emWin_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_IoT_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_ES_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_JLink_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_Ozone_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_SysView_64x64;
extern GUI_CONST_STORAGE GUI_BITMAP bmIcon_Flasher_64x64;

#define CLEAR_BUTTON_ID (GUI_ID_BUTTON0)

// Some dimension defines
//
#define KNOB_X0 307
#define KNOB_Y0 92

#define KNOB_OFFSET        450
#define FAN_CONTROL_0_X0   KNOB_X0 + 20
#define FAN_CONTROL_0_Y0   KNOB_Y0 + 255
#define FAN_CONTROL_SIZE_X 50
#define FAN_CONTROL_SIZE_Y 22
#define FAN_CONTROL_1_X0   FAN_CONTROL_0_X0 + FAN_CONTROL_SIZE_X + 1
#define FAN_CONTROL_1_Y0   FAN_CONTROL_0_Y0

//
// Colors
//
#define DARK_BLUE  GUI_MAKE_COLOR(0x613600)
#define LIGHT_BLUE GUI_MAKE_COLOR(0xaa7d67)
#define BLUE       GUI_MAKE_COLOR(0x855a41)
#define LEMON      GUI_MAKE_COLOR(0x00d6d3)
#define LIGHTGRAY  GUI_MAKE_COLOR(0xEEEEEE)

#define MAX_TEMPERATURE 30
#define MIN_TEMPERATURE 2
extern void emwin_init(void);
extern void UpdateSpo2BarGraph(unsigned char level);
extern unsigned char Cmd_ECG_Tobe_Sent_To_BM100 ;
#define EXAMPLE_ENET_BASE ENET
#define EXAMPLE_PHY_ADDR (0x00U)
#define ENET_EXAMPLE_IRQ ETHERNET_IRQn
#define ENET_RXBD_NUM (4)
#define ENET_TXBD_NUM (4)
#define ENET_RXBUFF_SIZE (ENET_FRAME_MAX_FRAMELEN)
#define ENET_BuffSizeAlign(n) ENET_ALIGN(n, ENET_BUFF_ALIGNMENT)
#define ENET_ALIGN(x, align) ((unsigned int)((x) + ((align)-1)) & (unsigned int)(~(unsigned int)((align)-1)))
#define ENET_EXAMPLE_FRAME_HEADSIZE (14U)
#define ENET_EXAMPLE_DATA_LENGTH (1000U)
#define ENET_EXAMPLE_FRAME_SIZE (ENET_EXAMPLE_DATA_LENGTH + ENET_EXAMPLE_FRAME_HEADSIZE)
#define ENET_EXAMPLE_PACKAGETYPE (4U)
#define ENET_EXAMPLE_LOOP_COUNT (20U)
/* IP address configuration. */
#define configIP_ADDR0 192
#define configIP_ADDR1 168
#define configIP_ADDR2 0
#define configIP_ADDR3 102
/* Netmask configuration. */
#define configNET_MASK0 255
#define configNET_MASK1 255
#define configNET_MASK2 255
#define configNET_MASK3 0
/* Gateway address configuration. */
#define configGW_ADDR0 192
#define configGW_ADDR1 168
#define configGW_ADDR2 0
#define configGW_ADDR3 1

#if defined(__GNUC__)
#ifndef __ALIGN_END

#endif
#ifndef __ALIGN_BEGIN
#define __ALIGN_BEGIN
#endif
#else
#ifndef __ALIGN_END
#define __ALIGN_END
#endif
#ifndef __ALIGN_BEGIN
#if defined(__CC_ARM) || defined(__ARMCC_VERSION)
#define __ALIGN_BEGIN __attribute__((aligned(ENET_BUFF_ALIGNMENT)))
#elif defined(__ICCARM__)
#define __ALIGN_BEGIN
#endif
#endif
#endif


/* The MAC address for ENET device. */
uint8_t g_macAddr[6]     = {0xd4, 0xbe, 0xd9, 0x45, 0x22, 0x60};
uint8_t multicastAddr[6] = {0x01, 0x00, 0x5e, 0x00, 0x01, 0x81};
uint8_t g_frame[ENET_EXAMPLE_PACKAGETYPE][ENET_EXAMPLE_FRAME_SIZE];
uint8_t *g_txbuff[ENET_TXBD_NUM];
uint32_t g_txIdx      = 0;
uint8_t g_txbuffIdx   = 0;
uint8_t g_txGenIdx    = 0;
uint8_t g_txCosumIdx  = 0;
uint8_t g_txUsed      = 0;
uint8_t g_rxGenIdx    = 0;
uint32_t g_rxCosumIdx = 0;
uint32_t g_testIdx    = 0;
uint32_t g_rxIndex    = 0;
uint32_t g_rxCheckIdx = 0;
uint32_t g_rxbuffer[ENET_RXBD_NUM];
//__attribute__(( section(".noinit.$RAM4"), aligned(8))) unsigned char  GuiNumberofBytes[GUI_NUMBYTES/4];
__attribute__(( section(".noinit.$RAM"), aligned(8))) unsigned char  GuiNumberofBytes[GUI_NUMBYTES/4];
__attribute__(( section(".noinit.$RAM4"), aligned(32))) unsigned int   V_RamframeBuff[480000];

signed int ClockRotation=0;
volatile unsigned int g_Ticks=0;
//static void ENET_BuildBroadCastFrame(void);
//static void ENET_TXReclaim(void);
//static status_t ENET_TXQueue(uint8_t *data, uint16_t length);
//static uint8_t *ENET_RXRead(int32_t *length);
//static void ENET_RXClaim(uint8_t *buffer);

#define I2S_TX (I2S0)
#define I2S_RX (I2S1)
#define DEMO_DMA (DMA0)
#define DEMO_I2S_TX_CHANNEL (13)  //CHanged from 15
#define I2S_CLOCK_DIVIDER (CLOCK_GetAudioPllOutFreq() / 48000U / 16U / 2U)
#define CONTROLLER_ID kUSB_ControllerOhci0//kUSB_ControllerEhci0//kUSB_ControllerOhci0
#define USB_HOST_INTERRUPT_PRIORITY (3U)


//New USB
#define USB_FS_CLK_SRC kCLOCK_UsbSrcFro
#define USB_FS_CLK_FREQ CLOCK_GetFroHfFreq()
static void cbBackgroundWin(WM_MESSAGE *pMsg);

void StartSoundPlayback(void);
void StartDigitalLoopback(void);


void Delay11(int );

int TempCount1 = 0;
int TempCount2 = 0;
int TempCount3 = 0;
int TempCount4 = 0;
int TempCount5 = 0;
//char Letter_Char1[8];
GUI_COLOR clr;
int WinHeight=0;
short ECGWaveBuffer[70];
short NumofSamples=0;
char Temp222[8];

WM_HWIN   _hSunny=0;
WM_HWIN   _hBootWin=0;
USB_Type usb0;

#define SDRAM_BASE_ADDR  0xa0000000
#define SDRAM_SIZE_BYTES (32 * 1024 * 1024)
#define SDRAM_EXAMPLE_DATALEN (SDRAM_SIZE_BYTES / 4)
#define SDRAM_TEST_PATTERN    (2)

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Prototypes

 ******************************************************************************/


/*******************************************************************************
 * Variables
 ******************************************************************************/

/* Frame end flag. */
static volatile bool s_frameEndFlag;
int cursorPosX;
int cursorPosY;






/*
 * @brief   Application entry point.
 */
uint8_t Tx_Variable = 0;

 status_t SDRAM_DataBusCheck(volatile uint32_t *address)
 {
     uint32_t data = 0;

     /* Write the walking 1's data test. */
     for (data = 1; data != 0; data <<= 1)
     {
         *address = data;

         /* Read the data out of the address and check. */
         if (*address != data)
         {
             return kStatus_Fail;
         }
     }
     return kStatus_Success;
 }

 status_t SDRAM_AddressBusCheck(volatile uint32_t *address, uint32_t bytes)
 {
	 char xyz[10];
     uint32_t pattern = 0x55555555;
     uint32_t size    = bytes / 4;
     uint32_t offset;
     uint32_t checkOffset;

     /* write the pattern to the power-of-two address. */
     for (offset = 1; offset < size; offset <<= 1)
     {
         address[offset] = pattern;
     }
     address[0] = ~pattern;

     /* Read and check. */
     for (offset = 1; offset < size; offset <<= 1)
     {
         if (address[offset] != pattern)
         {
        	 sprintf(xyz,"%x",address[offset]);
        	 USART_WriteByte(NIBP_USART,xyz[0]);
        	 USART_WriteByte(NIBP_USART,xyz[1]);
        	 USART_WriteByte(NIBP_USART,xyz[2]);
        	 USART_WriteByte(NIBP_USART,xyz[3]);
        	 USART_WriteByte(NIBP_USART,xyz[4]);
        	 USART_WriteByte(NIBP_USART,xyz[5]);
        	 USART_WriteByte(NIBP_USART,xyz[6]);
        	 USART_WriteByte(NIBP_USART,xyz[7]);
        	 USART_WriteByte(NIBP_USART,'-');

             return kStatus_Fail;
         }
     }

     if (address[0] != ~pattern)
     {
    	 USART_WriteByte(NIBP_USART,'W');
         return kStatus_Fail;
     }

     /* Change the data to the revert one address each time
      * and check there is no effect to other address. */
     for (offset = 1; offset < size; offset <<= 1)
     {
         address[offset] = ~pattern;
         for (checkOffset = 1; checkOffset < size; checkOffset <<= 1)
         {
             if ((checkOffset != offset) && (address[checkOffset] != pattern))
             {


//				       	 sprintf(xyz,"%x", address[checkOffset]);
//				         USART_WriteByte(NIBP_USART,xyz[0]);
//				         USART_WriteByte(NIBP_USART,xyz[1]);
//				         USART_WriteByte(NIBP_USART,xyz[2]);
//				         USART_WriteByte(NIBP_USART,xyz[3]);
//				         USART_WriteByte(NIBP_USART,xyz[4]);
//				         USART_WriteByte(NIBP_USART,xyz[5]);
//				         USART_WriteByte(NIBP_USART,xyz[6]);
//				         USART_WriteByte(NIBP_USART,xyz[7]);
//				         USART_WriteByte(NIBP_USART,',');
//            	         sprintf(xyz,"%d",checkOffset);
//            	         USART_WriteByte(NIBP_USART,xyz[0]);
//            	         USART_WriteByte(NIBP_USART,xyz[1]);
//            	         USART_WriteByte(NIBP_USART,xyz[2]);
//            	         USART_WriteByte(NIBP_USART,xyz[3]);
//            	         USART_WriteByte(NIBP_USART,',');
//            	         sprintf(xyz,"%d",offset);
//            	         USART_WriteByte(NIBP_USART,xyz[0]);
//            	         USART_WriteByte(NIBP_USART,xyz[1]);
//            	         USART_WriteByte(NIBP_USART,xyz[2]);
//            	         USART_WriteByte(NIBP_USART,xyz[3]);
                         return kStatus_Fail;
             }
         }
         address[offset] = pattern;
     }
     return kStatus_Success;
 }
 void BOARD_TestSDRAM(void)
 {
 	    char xyz[10];
 		uint32_t *sdram = (uint32_t *)SDRAM_BASE_ADDR;
 		uint8_t index;

     if (SDRAM_DataBusCheck(sdram) != kStatus_Success)
           {
    		                USART_WriteByte(NIBP_USART,'D');
    		                USART_WriteByte(NIBP_USART,'B');
    		                USART_WriteByte(NIBP_USART,'F');
    		                USART_WriteByte(NIBP_USART,'-');

          //  PRINTF("\r\n SDRAM data bus check is failure.\r\n");
           }
     else if (SDRAM_DataBusCheck(sdram) == kStatus_Success)
           {
    	                    USART_WriteByte(NIBP_USART,'D');
    	     		        USART_WriteByte(NIBP_USART,'B');
    	     		        USART_WriteByte(NIBP_USART,'S');
    	     		        USART_WriteByte(NIBP_USART,'-');

          }
     if (SDRAM_AddressBusCheck(sdram, SDRAM_SIZE_BYTES) != kStatus_Success)
          {
 		                    USART_WriteByte(NIBP_USART,'A');
 		                    USART_WriteByte(NIBP_USART,'B');
 		                    USART_WriteByte(NIBP_USART,'F');
 		                    USART_WriteByte(NIBP_USART,'-');

                       //  PRINTF("\r\n SDRAM address bus check is failure.\r\n");
          }
     else if (SDRAM_AddressBusCheck(sdram, SDRAM_SIZE_BYTES) == kStatus_Success)
          {
         	                USART_WriteByte(NIBP_USART,'A');
         	     		    USART_WriteByte(NIBP_USART,'B');
         	     		    USART_WriteByte(NIBP_USART,'S');
         	     		    USART_WriteByte(NIBP_USART,'-');

          }

 		                    USART_WriteByte(NIBP_USART,'D');
 		                    USART_WriteByte(NIBP_USART,'S');
 		                    USART_WriteByte(NIBP_USART,'W');

    // PRINTF("\r\n Start EMC SDRAM access example.\r\n");
   //  PRINTF("\r\n SDRAM Write Start, Start Address 0x%x, Data Length %d !\r\n", sdram, SDRAM_EXAMPLE_DATALEN);

     for (index = 0; index < SDRAM_EXAMPLE_DATALEN; index++)
     {
         *(uint32_t *)(sdram + index) = index;
     }

   //  PRINTF("\r\n SDRAM Write finished!\r\n");

   //  PRINTF("\r\n SDRAM Read/Check Start, Start Address 0x%x, Data Length %d !\r\n", sdram, SDRAM_EXAMPLE_DATALEN);

     for (index = 0; index < SDRAM_EXAMPLE_DATALEN; index++)
     {
         if (*(uint32_t *)(sdram + index) != index)
         {
     		USART_WriteByte(NIBP_USART,'E');
     		USART_WriteByte(NIBP_USART,'R');
     		USART_WriteByte(NIBP_USART,'R');
     		USART_WriteByte(NIBP_USART,'-');
     		sprintf(xyz,"%x",index);
     		USART_WriteByte(NIBP_USART,xyz[0]);
     		USART_WriteByte(NIBP_USART,xyz[1]);
         //    PRINTF("\r\n SDRAM Write Data and Read Data Check Error!\r\n");
             break;
         }
     }
 		USART_WriteByte(NIBP_USART,'D');
 		USART_WriteByte(NIBP_USART,'O');
 		USART_WriteByte(NIBP_USART,'N');
 		USART_WriteByte(NIBP_USART,'E');
 		USART_WriteByte(NIBP_USART,'-');

 }
int main(void) {
	status_t status;
	ctimer_config_t configtimer;
	ctimer_match_config_t matchConfig;

	//uint8_t index;
	void *buff;


	uint32_t refClock = 50000000;
	uint8_t *buffer;
	uint32_t timedelay;
	bool link=false;

    int termWidth;
    int termHeight;
    int temp=0;
    int charWidth;
    int lineHeight;
    int i=0,j=0;
    int c      = 0;
    int c_prev = 0;
    unsigned long errRt=0;
    char xyz[10];
    WM_HWIN hItem;
    int xSize=0,ySize=0;
    unsigned int memTest[100];
    static unsigned char Toggleled=0;
    uint32_t index;


	//int cout = 0;
	//ctimer_match_config_t matchConfig1;
  	/* Init board hardware. */
	//  CLOCK_EnableClock(kCLOCK_Iocon);                           /* Enables the clock for the IOCON block. 0 = Disable; 1 = Enable.: 0x01u */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();

    BOARD_InitSDRAM();
    CLOCK_EnableClock(kCLOCK_Gpio4);
    /* Enable the RTC 32K Oscillator */
    SYSCON->RTCOSCCTRL |= SYSCON_RTCOSCCTRL_EN_MASK;
    // For ADC
    /* Enable the asynchronous bridge */
    SYSCON->ASYNCAPBCTRL = 1;
    // Set the back light PWM. Below is not working as Backlight pin is set as permanently high
    BOARD_InitPWM();
    CLOCK_EnableClock(kCLOCK_Sdio);
	//Enable PINT
	CLOCK_EnableClock(kCLOCK_Pint); //Is this required?

	//BOARD_TestSDRAM();
	//   for(i=0;i<400000;i++){}

	    GUI_Init();
	   // USART_WriteByte(NIBP_USART,'1');
	    GUI_MULTIBUF_Begin();
	    GUI_SetColor(GUI_BLACK);
	    GUI_SetBkColor(GUI_BLACK);
	    GUI_Clear();
	    GUI_FillRect(0,0,800,600);
// use for delay in main screem
	    for(i=0;i<400000;i++){}
	    GUI_SetColor(GUI_WHITE);
	    GUI_SetTextMode(GUI_TM_NORMAL);
	    GUI_SetFont(&GUI_Font32_ASCII);
	    GUI_DispStringHCenterAt("SCHILLER" , 300, 100);
	    GUI_MULTIBUF_End();
	   // USART_WriteByte(NIBP_USART,'2');

	       while(1)
	         {
                	WM_Exec();
       	            GUI_Delay(50);
       	           // USART_WriteByte(NIBP_USART,'*');

	         }

   return 0;
}


