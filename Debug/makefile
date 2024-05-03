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
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := LPC54618J512_DG400_1
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: LPC54618J512_DG400_1.axf

# Tool invocations
LPC54618J512_DG400_1.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"D:\work folder\NithinGit\Nithin_ADCModule\libs" -L"D:\work folder\NithinGit\Nithin_ADCModule\emwin\emWin_library\MCUXpresso" -L"D:\work folder\NithinGit\Nithin_ADCModule\emwin" -Xlinker -Map="LPC54618J512_DG400_1.map" -Xlinker --defsym=__user_heap_base=__end_bss_RAM4 -Xlinker --defsym=_pvHeapLimit=__end_bss_RAM4+0x400000 -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -T "LPC54618J512_DG400_1_Debug.ld" -o "LPC54618J512_DG400_1.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

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
