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
 * @file    board.c
 * @brief   Board initialization file.
 */
 
/* This is a template for board specific configuration created by MCUXpresso IDE Project Wizard.*/

#include <stdint.h>
#include "board.h"
#include "fsl_emc.h"
#include "fsl_lcdc.h"
#include "fsl_sctimer.h"

#include "fsl_power.h"





/**
 * @brief Set up and initialize all required blocks and functions related to the board hardware.
 */

//extern uint16_t 0[IMG_HEIGHT][IMG_WIDTH / APP_PIXEL_PER_BYTE];




void BOARD_InitDebugConsole(void) {
	/* The user initialization should be placed here */
}

void BOARD_InitSDRAM(void)
{
    uint32_t emcFreq;
    emc_basic_config_t basicConfig;
    emc_dynamic_timing_config_t dynTiming;
    emc_dynamic_chip_config_t dynChipConfig;

    emcFreq = CLOCK_GetEmcClkFreq();
    assert(emcFreq != 0); /* Check the clock of emc */
    /* Basic configuration. */

    basicConfig.endian   = kEMC_LittleEndian;
    basicConfig.fbClkSrc = kEMC_IntloopbackEmcclk;
    /* EMC Clock = CPU FREQ/2 here can fit CPU freq from 12M ~ 180M.
     * If you change the divide to 0 and EMC clock is larger than 100M
     * please take refer to emc.dox to adjust EMC clock delay.
     */
    basicConfig.emcClkDiv = 2;  //0: 180MHz, 1: for 90MHz EMC, 2: 60MHz
    /* Dynamic memory timing configuration. */
    dynTiming.readConfig            = kEMC_Cmddelay;  //Use kEMC_NoDelay for higher speed of EMC clock. Also try kEMC_CmdDelayPulseOneclk and kEMC_CmddelayPulsetwoclk
    dynTiming.refreshPeriod_Nanosec = SDRAM_REFRESHPERIOD_NS;
    dynTiming.tRp_Ns                = SDRAM_TRP_NS;
    dynTiming.tRas_Ns               = SDRAM_TRAS_NS;
    dynTiming.tSrex_Ns              = SDRAM_TSREX_NS;
    dynTiming.tApr_Ns               = SDRAM_TAPR_NS;
    dynTiming.tWr_Ns                = ((1000000000 / emcFreq) + SDRAM_TWRDELT_NS); /* one clk + 6ns */
    dynTiming.tDal_Ns               = dynTiming.tWr_Ns + dynTiming.tRp_Ns;
    dynTiming.tRc_Ns                = SDRAM_TRC_NS;
    dynTiming.tRfc_Ns               = SDRAM_RFC_NS;
    dynTiming.tXsr_Ns               = SDRAM_XSR_NS;
    dynTiming.tRrd_Ns               = SDRAM_RRD_NS;
    dynTiming.tMrd_Nclk             = SDRAM_MRD_NCLK;
    /* Dynamic memory chip specific configuration: Chip 0 - MTL48LC8M16A2B4-6A */
    dynChipConfig.chipIndex       = 0;
    dynChipConfig.dynamicDevice   = kEMC_Sdram;
    dynChipConfig.rAS_Nclk        = SDRAM_RAS_NCLK;
    dynChipConfig.sdramModeReg    = SDRAM_MODEREG_VALUE;
    dynChipConfig.sdramExtModeReg = 0; /* it has no use for normal sdram */
    dynChipConfig.devAddrMap      = SDRAM_DEV_MEMORYMAP;




    /* EMC Basic configuration. */
    EMC_Init(EMC, &basicConfig);
    /* EMC Dynamc memory configuration. */
    EMC_DynamicMemInit(EMC, &dynTiming, &dynChipConfig, 1);
    EMC_Enable(EMC, true);
    //EMC_MirrorChipAddr(EMC, true);
}

void BOARD_InitSRAM(void)
{
	uint32_t extwait = 0;
	emc_static_chip_config_t SramchipConfig;
	emc_static_chip_config_t SramchipConfig2;
	emc_static_chip_config_t SramchipConfig3;

	SramchipConfig.chipIndex = 0;
	SramchipConfig.memWidth = kEMC_16BitWidth;  //If set to 16 bit A0 and A1 are pulsing at the same time causing wrong lcd display
	SramchipConfig.specailConfig = 0X88;//0x00080088;//0x88; //Giving result for 0x88
	SramchipConfig.tWaitWriteEn_Ns = 5;
	SramchipConfig.tWaitOutEn_Ns = 5;
	SramchipConfig.tWaitReadPage_Ns = 27;
	SramchipConfig.tWaitReadNoPage_Ns = 39;
	SramchipConfig.tWaitWrite_Ns = 40;
	SramchipConfig.tWaitTurn_Ns = 10;
	EMC_StaticMemInit(EMC, &extwait, &SramchipConfig, 1 );

	SramchipConfig2.chipIndex = 1;
	SramchipConfig2.memWidth = kEMC_8BitWidth;  //If set to 16 bit A0 and A1 are pulsing at the same time causing wrong lcd display
	SramchipConfig2.specailConfig = 0x00000088; //Giving result for 0x88
	SramchipConfig2.tWaitWriteEn_Ns = 5;
	SramchipConfig2.tWaitOutEn_Ns = 5;
	SramchipConfig2.tWaitReadPage_Ns = 27;
	SramchipConfig2.tWaitReadNoPage_Ns = 70; //70;
	SramchipConfig2.tWaitWrite_Ns = 40;
	SramchipConfig2.tWaitTurn_Ns = 10;
	EMC_StaticMemInit(EMC, &extwait, &SramchipConfig2, 1 );

	SramchipConfig3.chipIndex = 2;
	SramchipConfig3.memWidth = kEMC_8BitWidth;  //If set to 16 bit 2 WE pulses comes for every Write Operation
	SramchipConfig3.specailConfig = 0x00000088;
	SramchipConfig3.tWaitWriteEn_Ns = 5;
	SramchipConfig3.tWaitOutEn_Ns = 5;
	SramchipConfig3.tWaitReadPage_Ns = 27;
	SramchipConfig3.tWaitReadNoPage_Ns = 70;//70;
	SramchipConfig3.tWaitWrite_Ns = 40;
	SramchipConfig3.tWaitTurn_Ns = 10;
	EMC_StaticMemInit(EMC, &extwait, &SramchipConfig3, 1 );
}



void BOARD_InitPWM(void)
{
    sctimer_config_t config;
    sctimer_pwm_signal_param_t pwmParam;
    uint32_t event;

    SCTIMER_GetDefaultConfig(&config);
    SCTIMER_Init(SCT0, &config);
    pwmParam.output = kSCTIMER_Out_5;
    pwmParam.level = kSCTIMER_HighTrue;
    pwmParam.dutyCyclePercent = 5;
    //SCTIMER_SetupPwm(SCT0, &pwmParam, kSCTIMER_CenterAlignedPwm, 1000U, CLOCK_GetFreq(kCLOCK_Sct0), &event);
	SCTIMER_SetupPwm(SCT0, &pwmParam, kSCTIMER_CenterAlignedPwm, 1000U, CLOCK_GetSctClkFreq(), &event);

}


extern uint8_t Tx_Variable;
extern char LED1_Last_State;


void BOARD_I2C_Init(I2C_Type *base, uint32_t clkSrc_Hz)
{




}

void Delay1(int dele)
{
	int i = 0;
	int j_var = 0;

	for (i=0; i<=dele; i++)
	{
		j_var = i;
		i = j_var;
	}
}

