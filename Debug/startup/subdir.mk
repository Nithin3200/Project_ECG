################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../startup/startup_lpc54618.c 

OBJS += \
./startup/startup_lpc54618.o 

C_DEPS += \
./startup/startup_lpc54618.d 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC54618J512BD208=1 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\work folder\NithinGit\Nithin_ADCModule\board" -I"D:\work folder\NithinGit\Nithin_ADCModule\emwin\emWin_header" -I"D:\work folder\NithinGit\Nithin_ADCModule\emwin\emWin_Config" -I"D:\work folder\NithinGit\Nithin_ADCModule\source" -I"D:\work folder\NithinGit\Nithin_ADCModule" -I"D:\work folder\NithinGit\Nithin_ADCModule\drivers" -I"D:\work folder\NithinGit\Nithin_ADCModule\device" -I"D:\work folder\NithinGit\Nithin_ADCModule\CMSIS" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


