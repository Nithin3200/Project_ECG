################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/DF_ParameterWindow.c \
../Application/DF_RTOS_Task.c \
../Application/DF_WAVEFORM_menu_Setup.c \
../Application/Data_Update_Interface.c \
../Application/Decoder.c \
../Application/DischargePatient.c \
../Application/MainScreen.c \
../Application/MenuButton.c \
../Application/MultiLanguageTranslationDatabase.c \
../Application/PatientManage.c \
../Application/SchillerLogo.c \
../Application/Tahoma140.c \
../Application/Tahoma30.c \
../Application/Tahoma30R.c \
../Application/Tahoma60.c \
../Application/Tahoma90.c \
../Application/WaveFormWindow.c \
../Application/WavePlotterAPI.c \
../Application/WidgetAPI.c 

OBJS += \
./Application/DF_ParameterWindow.o \
./Application/DF_RTOS_Task.o \
./Application/DF_WAVEFORM_menu_Setup.o \
./Application/Data_Update_Interface.o \
./Application/Decoder.o \
./Application/DischargePatient.o \
./Application/MainScreen.o \
./Application/MenuButton.o \
./Application/MultiLanguageTranslationDatabase.o \
./Application/PatientManage.o \
./Application/SchillerLogo.o \
./Application/Tahoma140.o \
./Application/Tahoma30.o \
./Application/Tahoma30R.o \
./Application/Tahoma60.o \
./Application/Tahoma90.o \
./Application/WaveFormWindow.o \
./Application/WavePlotterAPI.o \
./Application/WidgetAPI.o 

C_DEPS += \
./Application/DF_ParameterWindow.d \
./Application/DF_RTOS_Task.d \
./Application/DF_WAVEFORM_menu_Setup.d \
./Application/Data_Update_Interface.d \
./Application/Decoder.d \
./Application/DischargePatient.d \
./Application/MainScreen.d \
./Application/MenuButton.d \
./Application/MultiLanguageTranslationDatabase.d \
./Application/PatientManage.d \
./Application/SchillerLogo.d \
./Application/Tahoma140.d \
./Application/Tahoma30.d \
./Application/Tahoma30R.d \
./Application/Tahoma60.d \
./Application/Tahoma90.d \
./Application/WaveFormWindow.d \
./Application/WavePlotterAPI.d \
./Application/WidgetAPI.d 


# Each subdirectory must supply rules for building sources it contributes
Application/%.o: ../Application/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_LPC54618J512BD208=1 -DCPU_LPC54618J512BD208_cm4 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\Enhanced_GUI_DIGI400Project\x\board" -I"D:\Enhanced_GUI_DIGI400Project\x\emwin\emWin_header" -I"D:\Enhanced_GUI_DIGI400Project\x\emwin\emWin_Config" -I"D:\Enhanced_GUI_DIGI400Project\x\source" -I"D:\Enhanced_GUI_DIGI400Project\x" -I"D:\Enhanced_GUI_DIGI400Project\x\drivers" -I"D:\Enhanced_GUI_DIGI400Project\x\device" -I"D:\Enhanced_GUI_DIGI400Project\x\CMSIS" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


