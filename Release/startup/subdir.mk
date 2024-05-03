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
startup/%.o: ../startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC54618J512BD208 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\board" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\source" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\drivers" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\device" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\CMSIS" -Os -fno-common -g -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


