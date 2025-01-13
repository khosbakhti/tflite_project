################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/ImC/decoder.c \
../Core/Src/ImC/imc_api.c \
../Core/Src/ImC/uartBufferIT.c 

C_DEPS += \
./Core/Src/ImC/decoder.d \
./Core/Src/ImC/imc_api.d \
./Core/Src/ImC/uartBufferIT.d 

OBJS += \
./Core/Src/ImC/decoder.o \
./Core/Src/ImC/imc_api.o \
./Core/Src/ImC/uartBufferIT.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/ImC/%.o Core/Src/ImC/%.su: ../Core/Src/ImC/%.c Core/Src/ImC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../tensorflow_lite_micro_files -I../tensorflow_lite_micro_files/third_party/flatbuffers/include -I../tensorflow_lite_micro_files/third_party/gemmlowp -I../tensorflow_lite_micro_files/third_party/ruy/ruy -I../cmsis -I../cmsis/CMSIS/DSP/Include -I../cmsis/CMSIS/NN/Include -I../cmsis/CMSIS/Core/Include -O0 -ffunction-sections -fdata-sections -Wall -DCMSIS_NN -DESP_PLATFORM -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-ImC

clean-Core-2f-Src-2f-ImC:
	-$(RM) ./Core/Src/ImC/decoder.d ./Core/Src/ImC/decoder.o ./Core/Src/ImC/decoder.su ./Core/Src/ImC/imc_api.d ./Core/Src/ImC/imc_api.o ./Core/Src/ImC/imc_api.su ./Core/Src/ImC/uartBufferIT.d ./Core/Src/ImC/uartBufferIT.o ./Core/Src/ImC/uartBufferIT.su

.PHONY: clean-Core-2f-Src-2f-ImC

