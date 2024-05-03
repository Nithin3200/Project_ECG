################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Schiller/ADC.c \
../Schiller/AED.c \
../Schiller/Alarm.c \
../Schiller/Audio.c \
../Schiller/BM100.c \
../Schiller/CPR.c \
../Schiller/Defib.c \
../Schiller/Display.c \
../Schiller/ETCO2.c \
../Schiller/Encoder.c \
../Schiller/GPIO.c \
../Schiller/Global_Variables.c \
../Schiller/LAN.c \
../Schiller/NIBP.c \
../Schiller/Pacer.c \
../Schiller/Paddle.c \
../Schiller/PowerSupply.c \
../Schiller/Printer.c \
../Schiller/SDCard.c \
../Schiller/SPO2.c \
../Schiller/Sch51.c \
../Schiller/Screen.c \
../Schiller/Touch.c \
../Schiller/Trend.c \
../Schiller/WatchDog.c 

OBJS += \
./Schiller/ADC.o \
./Schiller/AED.o \
./Schiller/Alarm.o \
./Schiller/Audio.o \
./Schiller/BM100.o \
./Schiller/CPR.o \
./Schiller/Defib.o \
./Schiller/Display.o \
./Schiller/ETCO2.o \
./Schiller/Encoder.o \
./Schiller/GPIO.o \
./Schiller/Global_Variables.o \
./Schiller/LAN.o \
./Schiller/NIBP.o \
./Schiller/Pacer.o \
./Schiller/Paddle.o \
./Schiller/PowerSupply.o \
./Schiller/Printer.o \
./Schiller/SDCard.o \
./Schiller/SPO2.o \
./Schiller/Sch51.o \
./Schiller/Screen.o \
./Schiller/Touch.o \
./Schiller/Trend.o \
./Schiller/WatchDog.o 

C_DEPS += \
./Schiller/ADC.d \
./Schiller/AED.d \
./Schiller/Alarm.d \
./Schiller/Audio.d \
./Schiller/BM100.d \
./Schiller/CPR.d \
./Schiller/Defib.d \
./Schiller/Display.d \
./Schiller/ETCO2.d \
./Schiller/Encoder.d \
./Schiller/GPIO.d \
./Schiller/Global_Variables.d \
./Schiller/LAN.d \
./Schiller/NIBP.d \
./Schiller/Pacer.d \
./Schiller/Paddle.d \
./Schiller/PowerSupply.d \
./Schiller/Printer.d \
./Schiller/SDCard.d \
./Schiller/SPO2.d \
./Schiller/Sch51.d \
./Schiller/Screen.d \
./Schiller/Touch.d \
./Schiller/Trend.d \
./Schiller/WatchDog.d 


# Each subdirectory must supply rules for building sources it contributes
Schiller/%.o: ../Schiller/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_LPC54618J512BD208 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DNDEBUG -D__REDLIB__ -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\board" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\source" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\drivers" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\device" -I"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\CMSIS" -Os -fno-common -g -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


