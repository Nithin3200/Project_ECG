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
 * @file    board.h
 * @brief   Board initialization header file.
 */
 
/* This is a template for board specific configuration created by MCUXpresso IDE Project Wizard.*/

#ifndef _BOARD_H_
#define _BOARD_H_

#include "clock_config.h"

#include "fsl_gpio.h"


/**
 * @brief	The board name 
 */
#define BOARD_NAME "board"

#if defined(__cplusplus)
extern "C" {
#endif /* __cplusplus */


#define CTIMER CTIMER0                 // Timer 0
#define CTIMER_MAT_OUT kCTIMER_Match_0 // Match output 0

//sar below
#define SDRAM_REFRESHPERIOD_NS (64 * 1000000 / 8192)//(8K rows / 64msec)
#define SDRAM_TRP_NS (18u)
#define SDRAM_TRAS_NS (42u)
#define SDRAM_TSREX_NS (67u)
#define SDRAM_TAPR_NS (18u)
#define SDRAM_TWRDELT_NS (6u)
#define SDRAM_TRC_NS (60u)
#define SDRAM_RFC_NS (60u)
#define SDRAM_XSR_NS (67u)
#define SDRAM_RRD_NS (12u)
#define SDRAM_MRD_NCLK (2u)
#define SDRAM_RAS_NCLK (2u)
#define SDRAM_MODEREG_VALUE (0x33u)
#define SDRAM_DEV_MEMORYMAP (0x0Du) // 256Mbits (16M*16, 4banks, 13 rows, 9 columns)
// sar above


#define APP_LCD LCD
#define LCD_PANEL_CLK 30000000
#define LCD_PPL 800 // 960 T
#define LCD_HSW 80
#define LCD_HFP 40
#define LCD_HBP 40
#define LCD_LPP 600 //608 T
#define LCD_VSW 3
#define LCD_VFP 1
#define LCD_VBP 4
#define LCD_POL_FLAGS kLCDC_InvertVsyncPolarity | kLCDC_InvertHsyncPolarity
#define NMT_DATA_BUFF_LNGTH  1000
//#define GUI_NUMBYTES  0x20000
#define GUI_NUMBYTES  (1024 * 100)
//#define LCD_INPUT_CLK_FREQ CLOCK_GetFreq(kCLOCK_Lcd)
#define LCD_INPUT_CLK_FREQ CLOCK_GetLcdClkFreq()
#define APP_LCD_IRQHandler LCD_IRQHandler
#define APP_LCD_IRQn LCD_IRQn
#define BOARD_SDIF_BASEADDR SDIF
//#define BOARD_SDIF_CLKSRC kCLOCK_SDio
#define BOARD_SDIF_CLK_FREQ CLOCK_GetSdioClkFreq() //CLOCK_GetFreq(kCLOCK_SDio)
#define BOARD_SDIF_CLK_ATTACH kMAIN_CLK_to_SDIO_CLK
#define BOARD_SDIF_IRQ SDIO_IRQn
#define BOARD_MMC_VCC_SUPPLY kMMC_VoltageWindows270to360
#define BOARD_SD_CARD_DETECT_PIN 10
#define BOARD_SD_CARD_DETECT_PORT 2
#define BOARD_SD_CARD_DETECT_GPIO GPIO
#define BOARD_SD_DETECT_TYPE kSDMMCHOST_DetectCardByHostCD



#define HV_BOARD_USART USART0
#define HVBOARD_USART_IRQHandler FLEXCOMM0_IRQHandler
#define HVBOARD_USART_IRQn FLEXCOMM0_IRQn

#define Paddle_Proc_USART USART1
#define Paddle_Proc_USART_IRQHandler FLEXCOMM1_IRQHandler
#define Paddle_Proc_USART_IRQn FLEXCOMM1_IRQn

#define BM100_USART USART2
#define BM100_USART_IRQHandler FLEXCOMM2_IRQHandler
#define BM100_USART_IRQn FLEXCOMM2_IRQn

#define SPO2_USART USART3
#define SPO2_USART_IRQHandler FLEXCOMM3_IRQHandler
#define SPO2_USART_IRQn FLEXCOMM3_IRQn

#define Pacer_USART USART4
#define Pacer_USART_IRQHandler FLEXCOMM4_IRQHandler
#define Pacer_USART_IRQn FLEXCOMM4_IRQn

#define NIBP_USART USART5
#define NIBP_USART_IRQHandler FLEXCOMM5_IRQHandler
#define NIBP_USART_IRQn FLEXCOMM5_IRQn

#define ECG_USART USART8
#define ECG_USART_IRQHandler FLEXCOMM8_IRQHandler
#define ECG_USART_IRQn FLEXCOMM8_IRQn

#define Printer_USART USART9
#define Printer_USART_IRQHandler FLEXCOMM9_IRQHandler
#define Printer_USART_IRQn FLEXCOMM9_IRQn


#define BOARD_CODEC_I2C_BASEADDR I2C7
#define BOARD_CODEC_I2C_CLOCK_FREQ 12000000

//__attribute__ ((aligned(4), section(".noinit.$RAM4"))) unsigned char Event_Data_IBP2pwm[1000];



#define LED1           (uint8_t*) 0x88000000
#define LED2           (uint8_t*) 0x88000001
#define VOL1           (uint8_t*) 0x88000002
#define VOL2           (uint8_t*) 0x88000003
#define FLASH_RST      (uint8_t*) 0x88000004
#define LAN_RST        (uint8_t*) 0x88000005
#define TOUCH_RST      (uint8_t*) 0x88000006
#define DUAL_UART_RST  (uint8_t*) 0x88000007




#define CO2_DualUart     (*(unsigned char*) 0x90000008) //0x90000020
#define CO2_DualUart_DLL (*(unsigned char*) 0x90000008)
#define CO2_DualUart_DLH (*(unsigned char*) 0x90000009)
#define CO2_DualUart_IER (*(unsigned char*) 0x90000009)
#define CO2_DualUart_FCR (*(unsigned char*) 0x9000000A)
#define CO2_DualUart_ISR (*(unsigned char*) 0x9000000A)
#define CO2_DualUart_LCR (*(unsigned char*) 0x9000000B)
#define CO2_DualUart_MCR (*(unsigned char*) 0x9000000C)
#define CO2_DualUart_LSR (*(unsigned char*) 0x9000000D)
#define CO2_DualUart_Scratch (*(unsigned char*) 0x9000000F)

#define Renesas_DualUart     (*(unsigned char*) 0x90000010) //0x90000040
#define Renesas_DualUart_DLL (*(unsigned char*) 0x90000010)
#define Renesas_DualUart_DLH (*(unsigned char*) 0x90000011)
#define Renesas_DualUart_IER (*(unsigned char*) 0x90000011)
#define Renesas_DualUart_FCR (*(unsigned char*) 0x90000012)
#define Renesas_DualUart_ISR (*(unsigned char*) 0x90000012)
#define Renesas_DualUart_LCR (*(unsigned char*) 0x90000013)
#define Renesas_DualUart_MCR (*(unsigned char*) 0x90000014)
#define Renesas_DualUart_LSR (*(unsigned char*) 0x90000015)
#define Renesas_DualUart_Scratch (*(unsigned char*) 0x90000017)

//Below are Input Pins
#define Rotary_PORT_Manual 4U
#define Rotary_PORT_AED 0U
#define Rotary_PORT_Monitor 5U
#define Rotary_PORT_Pacer 3U
#define Rotary_PORT_OFF 0U

#define Rotary_Manual_Pin 13U //Manual
#define Rotary_AED_Pin 31U //AED
#define Rotary_Monitor_Pin 9U //Monitor
#define Rotary_Pacer_Pin 18U //Pacer
#define Rotary_OFF_Pin 29U  //Off

#define IncreseKey_Port 3U
#define DecreaseKey_Port 4U
#define ChargeKey_Port 0U
#define DischargeKey_Port 1U
#define SyncKey_Port 3U
#define BPKey_Port 5U
#define CPRKey_Port 4U
#define EventKey_Port 2U
#define MuteKey_Port 4U
#define PrintKey_Port 4U
#define ECG_Type1_Port 3U
#define ECG_Type2_Port 5U
#define EnterKey_Port 2U
#define Full_Charge_Port 4U

#define IncreseKey_Pin 14U
#define DecreaseKey_Pin 18U
#define ChargeKey_Pin 11U
#define DischargeKey_Pin 0U
#define SyncKey_Pin 13U
#define BPKey_Pin 10U
#define CPRKey_Pin 31U
#define EventKey_Pin 20U
#define MuteKey_Pin 10U
#define PrintKey_Pin 5U
#define ECG_Type1_Pin 23U
#define ECG_Type2_Pin 2U
#define EnterKey_Pin 7U
#define Full_Charge_Pin 22U


//Below are Output Pins
#define Defi_Discharge_Port 2U
#define QRS_SEL1_Port 2U
#define QRS_SEL2_Port 2U
#define EGAIN_A_Port 2U
#define EGAIN_B_Port 3U

#define Defi_Discharge_Pin 12U
#define QRS_SEL1_Pin 26U
#define QRS_SEL2_Pin 19U
#define EGAIN_A_Pin 27U
#define EGAIN_B_Pin 12U

#define Renesas_Reset_Port 3U
#define Renesas_Reset_Pin 3U

#define Pacer_ON_OFF_Port 4U
#define Pacer_ON_OFF_Pin 4U

#define Power_Hold_Port 3U
#define Power_Hold_Pin 10U
#define HVBoard_Reset_Port 2U
#define HVBoard_Reset_Pin 18U
#define Printer_Reset_Port 3U
#define Printer_Reset_Pin 2U
#define Keyboard_Buffer_Enable_Port 3U
#define Keyboard_Buffer_Enable_Pin 20U
#define WathdogTimer_Port 4U
#define WathdogTimer_Pin 17U
#define Decoder_RST_Port 3U
#define Decoder_RST_Pin 15U
#define SW_Error_LED_Port 2U
#define SW_Error_LED_Pin 5U
#define PWM_TLED1_Port 3U
#define PWM_TLED1_Pin 19U
#define PWM_TLED2_Port 3U
#define PWM_TLED2_Pin 30U

#define Encoder_A_PORT 1U
#define Encoder_A_Pin 3U //A
#define Encoder_B_PORT 0U
#define Encoder_B_Pin 30U

#define USART_Printer_TX_DMA_CHANNEL 23
#define UART_Printer_DMA_BASEADDR DMA0





/**
 * @brief 	Initialize board specific settings.
 */
void BOARD_InitDebugConsole(void);
void BOARD_InitSDRAM(void);
void BOARD_InitSRAM(void);
status_t APP_LCDC_Init(void);
void BOARD_InitPWM(void);
void SchillerBoard_InitPins(void);
void Delay1(int);
void BOARD_Codec_I2C_Init(void);
status_t BOARD_Codec_I2C_Send(
    uint8_t deviceAddress, uint32_t subAddress, uint8_t subAddressSize, const uint8_t *txBuff, uint8_t txBuffSize);
status_t BOARD_Codec_I2C_Receive(
    uint8_t deviceAddress, uint32_t subAddress, uint8_t subAddressSize, uint8_t *rxBuff, uint8_t rxBuffSize);

#if defined(__cplusplus)
}
#endif /* __cplusplus */

#endif /* _BOARD_H_ */


