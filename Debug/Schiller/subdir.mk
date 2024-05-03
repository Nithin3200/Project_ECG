################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Schiller/ADC.c \
../Schiller/AED.c \
../Schiller/Alarm.c \
../Schiller/Audio.c \
../Schiller/AutoTest.c \
../Schiller/BM100.c \
../Schiller/CPR.c \
../Schiller/Defib.c \
../Schiller/Display.c \
../Schiller/ECG.c \
../Schiller/ETCO2.c \
../Schiller/Encoder.c \
../Schiller/GPIO.c \
../Schiller/Global_Variables.c \
../Schiller/LAN.c \
../Schiller/NIBP.c \
../Schiller/Pacer.c \
../Schiller/Paddle.c \
../Schiller/PaddleHRdetection.c \
../Schiller/PowerSupply.c \
../Schiller/Printer.c \
../Schiller/SDCard.c \
../Schiller/SPO2.c \
../Schiller/Sch51.c \
../Schiller/Screen.c \
../Schiller/Touch.c \
../Schiller/Trend.c \
../Schiller/USB.c \
../Schiller/WatchDog.c 

OBJS += \
./Schiller/ADC.o \
./Schiller/AED.o \
./Schiller/Alarm.o \
./Schiller/Audio.o \
./Schiller/AutoTest.o \
./Schiller/BM100.o \
./Schiller/CPR.o \
./Schiller/Defib.o \
./Schiller/Display.o \
./Schiller/ECG.o \
./Schiller/ETCO2.o \
./Schiller/Encoder.o \
./Schiller/GPIO.o \
./Schiller/Global_Variables.o \
./Schiller/LAN.o \
./Schiller/NIBP.o \
./Schiller/Pacer.o \
./Schiller/Paddle.o \
./Schiller/PaddleHRdetection.o \
./Schiller/PowerSupply.o \
./Schiller/Printer.o \
./Schiller/SDCard.o \
./Schiller/SPO2.o \
./Schiller/Sch51.o \
./Schiller/Screen.o \
./Schiller/Touch.o \
./Schiller/Trend.o \
./Schiller/USB.o \
./Schiller/WatchDog.o 

C_DEPS += \
./Schiller/ADC.d \
./Schiller/AED.d \
./Schiller/Alarm.d \
./Schiller/Audio.d \
./Schiller/AutoTest.d \
./Schiller/BM100.d \
./Schiller/CPR.d \
./Schiller/Defib.d \
./Schiller/Display.d \
./Schiller/ECG.d \
./Schiller/ETCO2.d \
./Schiller/Encoder.d \
./Schiller/GPIO.d \
./Schiller/Global_Variables.d \
./Schiller/LAN.d \
./Schiller/NIBP.d \
./Schiller/Pacer.d \
./Schiller/Paddle.d \
./Schiller/PaddleHRdetection.d \
./Schiller/PowerSupply.d \
./Schiller/Printer.d \
./Schiller/SDCard.d \
./Schiller/SPO2.d \
./Schiller/Sch51.d \
./Schiller/Screen.d \
./Schiller/Touch.d \
./Schiller/Trend.d \
./Schiller/USB.d \
./Schiller/WatchDog.d 


# Each subdirectory must supply rules for building sources it contributes
Schiller/%.o: ../Schiller/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC54618J512BD208=1 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Enhanced_GUI_DIGI400Project\x\board" -I"D:\Enhanced_GUI_DIGI400Project\x\emwin\emWin_header" -I"D:\Enhanced_GUI_DIGI400Project\x\emwin\emWin_Config" -I"D:\Enhanced_GUI_DIGI400Project\x\source" -I"D:\Enhanced_GUI_DIGI400Project\x" -I"D:\Enhanced_GUI_DIGI400Project\x\drivers" -I"D:\Enhanced_GUI_DIGI400Project\x\device" -I"D:\Enhanced_GUI_DIGI400Project\x\CMSIS" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


