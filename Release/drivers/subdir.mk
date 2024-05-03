################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/diskio.c \
../drivers/ff.c \
../drivers/ffsystem.c \
../drivers/ffunicode.c \
../drivers/fsl_DualUart.c \
../drivers/fsl_RTC8563.c \
../drivers/fsl_adc.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_crc.c \
../drivers/fsl_ctimer.c \
../drivers/fsl_dma.c \
../drivers/fsl_dmic.c \
../drivers/fsl_dmic_dma.c \
../drivers/fsl_emc.c \
../drivers/fsl_enet.c \
../drivers/fsl_flexcomm.c \
../drivers/fsl_gint.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2c.c \
../drivers/fsl_i2c_dma.c \
../drivers/fsl_i2s.c \
../drivers/fsl_i2s_dma.c \
../drivers/fsl_inputmux.c \
../drivers/fsl_lcdc.c \
../drivers/fsl_pint.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_rtc.c \
../drivers/fsl_sctimer.c \
../drivers/fsl_sd.c \
../drivers/fsl_sd_disk.c \
../drivers/fsl_sdif.c \
../drivers/fsl_sdmmc_common.c \
../drivers/fsl_sdmmc_event.c \
../drivers/fsl_sdmmc_host.c \
../drivers/fsl_sdmmc_spec.c \
../drivers/fsl_spi.c \
../drivers/fsl_spi_dma.c \
../drivers/fsl_usart.c \
../drivers/fsl_usart_dma.c \
../drivers/fsl_wwdt.c 

OBJS += \
./drivers/diskio.o \
./drivers/ff.o \
./drivers/ffsystem.o \
./drivers/ffunicode.o \
./drivers/fsl_DualUart.o \
./drivers/fsl_RTC8563.o \
./drivers/fsl_adc.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_crc.o \
./drivers/fsl_ctimer.o \
./drivers/fsl_dma.o \
./drivers/fsl_dmic.o \
./drivers/fsl_dmic_dma.o \
./drivers/fsl_emc.o \
./drivers/fsl_enet.o \
./drivers/fsl_flexcomm.o \
./drivers/fsl_gint.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2c.o \
./drivers/fsl_i2c_dma.o \
./drivers/fsl_i2s.o \
./drivers/fsl_i2s_dma.o \
./drivers/fsl_inputmux.o \
./drivers/fsl_lcdc.o \
./drivers/fsl_pint.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_rtc.o \
./drivers/fsl_sctimer.o \
./drivers/fsl_sd.o \
./drivers/fsl_sd_disk.o \
./drivers/fsl_sdif.o \
./drivers/fsl_sdmmc_common.o \
./drivers/fsl_sdmmc_event.o \
./drivers/fsl_sdmmc_host.o \
./drivers/fsl_sdmmc_spec.o \
./drivers/fsl_spi.o \
./drivers/fsl_spi_dma.o \
./drivers/fsl_usart.o \
./drivers/fsl_usart_dma.o \
./drivers/fsl_wwdt.o 

C_DEPS += \
./drivers/diskio.d \
./drivers/ff.d \
./drivers/ffsystem.d \
./drivers/ffunicode.d \
./drivers/fsl_DualUart.d \
./drivers/fsl_RTC8563.d \
./drivers/fsl_adc.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_crc.d \
./drivers/fsl_ctimer.d \
./drivers/fsl_dma.d \
./drivers/fsl_dmic.d \
./drivers/fsl_dmic_dma.d \
./drivers/fsl_emc.d \
./drivers/fsl_enet.d \
./drivers/fsl_flexcomm.d \
./drivers/fsl_gint.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2c.d \
./drivers/fsl_i2c_dma.d \
./drivers/fsl_i2s.d \
./drivers/fsl_i2s_dma.d \
./drivers/fsl_inputmux.d \
./drivers/fsl_lcdc.d \
./drivers/fsl_pint.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_rtc.d \
./drivers/fsl_sctimer.d \
./drivers/fsl_sd.d \
./drivers/fsl_sd_disk.d \
./drivers/fsl_sdif.d \
./drivers/fsl_sdmmc_common.d \
./drivers/fsl_sdmmc_event.d \
./drivers/fsl_sdmmc_host.d \
./drivers/fsl_sdmmc_spec.d \
./drivers/fsl_spi.d \
./drivers/fsl_spi_dma.d \
./drivers/fsl_usart.d \
./drivers/fsl_usart_dma.d \
./drivers/fsl_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC54618J512BD208 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\board" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\source" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\drivers" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\device" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\CMSIS" -Os -fno-common -g -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


