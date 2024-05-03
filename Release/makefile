################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include source/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include board/subdir.mk
-include Schiller/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: LPC54618J512_DG400_1.axf

# Tool invocations
LPC54618J512_DG400_1.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\Nandaraj\Documents\MCUXpressoIDE_11.1.1_3241\workspace\NewDG400\LPC54618J512_DG400_1\libs" -Xlinker -Map="LPC54618J512_DG400_1.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -T LPC54618J512_DG400_1_Release.ld -o "LPC54618J512_DG400_1.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) LPC54618J512_DG400_1.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "LPC54618J512_DG400_1.axf"; # arm-none-eabi-objcopy -v -O binary "LPC54618J512_DG400_1.axf" "LPC54618J512_DG400_1.bin" ; # checksum -p LPC54618J512 -d "LPC54618J512_DG400_1.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
