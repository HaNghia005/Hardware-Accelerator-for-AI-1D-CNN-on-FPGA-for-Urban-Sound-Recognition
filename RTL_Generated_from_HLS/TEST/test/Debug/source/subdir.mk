################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/DOWNLOAD/Documents/KLTN/Py2C/venv/CNN.cpp \
D:/DOWNLOAD/Documents/KLTN/Py2C/venv/Conv.cpp \
D:/DOWNLOAD/Documents/KLTN/Py2C/venv/Pool.cpp 

OBJS += \
./source/CNN.o \
./source/Conv.o \
./source/Pool.o 

CPP_DEPS += \
./source/CNN.d \
./source/Conv.d \
./source/Pool.d 


# Each subdirectory must supply rules for building sources it contributes
source/CNN.o: D:/DOWNLOAD/Documents/KLTN/Py2C/venv/CNN.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/DOWNLOAD/Documents/KLTN/VITIS/TEST -ID:/Vivado2022.2/Vitis_HLS/2022.2/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/etc -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/ap_sysc -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/auto_cc/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/Conv.o: D:/DOWNLOAD/Documents/KLTN/Py2C/venv/Conv.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/DOWNLOAD/Documents/KLTN/VITIS/TEST -ID:/Vivado2022.2/Vitis_HLS/2022.2/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/etc -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/ap_sysc -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/auto_cc/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/Pool.o: D:/DOWNLOAD/Documents/KLTN/Py2C/venv/Pool.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/DOWNLOAD/Documents/KLTN/VITIS/TEST -ID:/Vivado2022.2/Vitis_HLS/2022.2/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/etc -ID:/Vivado2022.2/Vitis_HLS/2022.2/include/ap_sysc -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/auto_cc/include -ID:/Vivado2022.2/Vitis_HLS/2022.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


