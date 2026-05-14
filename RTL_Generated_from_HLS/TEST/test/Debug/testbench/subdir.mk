################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/DOWNLOAD/Documents/KLTN/Py2C/venv/CNN_tb.cpp 

OBJS += \
./testbench/CNN_tb.o 

CPP_DEPS += \
./testbench/CNN_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/CNN_tb.o: D:/DOWNLOAD/Documents/KLTN/Py2C/venv/CNN_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/DOWNLOAD/Documents/KLTN/VITIS/TEST -ID:/Vivado2022.2/Vitis_HLS/2022.2/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/etc -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/ap_sysc -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/auto_cc/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/systemc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/CNN_tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


