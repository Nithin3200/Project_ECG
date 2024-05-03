################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_ctimer.c \
../drivers/fsl_dmic.c \
../drivers/fsl_emc.c \
../drivers/fsl_gpio.c \
../drivers/fsl_lcdc.c \
../drivers/fsl_power.c \
../drivers/fsl_reset.c \
../drivers/fsl_sctimer.c 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_ctimer.o \
./drivers/fsl_dmic.o \
./drivers/fsl_emc.o \
./drivers/fsl_gpio.o \
./drivers/fsl_lcdc.o \
./drivers/fsl_power.o \
./drivers/fsl_reset.o \
./drivers/fsl_sctimer.o 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_ctimer.d \
./drivers/fsl_dmic.d \
./drivers/fsl_emc.d \
./drivers/fsl_gpio.d \
./drivers/fsl_lcdc.d \
./drivers/fsl_power.d \
./drivers/fsl_reset.d \
./drivers/fsl_sctimer.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC54618J512BD208=1 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\work folder\NithinGit\Nithin_ADCModule\board" -I"D:\work folder\NithinGit\Nithin_ADCModule\emwin\emWin_header" -I"D:\work folder\NithinGit\Nithin_ADCModule\emwin\emWin_Config" -I"D:\work folder\NithinGit\Nithin_ADCModule\source" -I"D:\work folder\NithinGit\Nithin_ADCModule" -I"D:\work folder\NithinGit\Nithin_ADCModule\drivers" -I"D:\work folder\NithinGit\Nithin_ADCModule\device" -I"D:\work folder\NithinGit\Nithin_ADCModule\CMSIS" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


