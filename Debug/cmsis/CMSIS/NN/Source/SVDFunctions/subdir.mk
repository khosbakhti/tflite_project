################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c 

C_DEPS += \
./cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d 

OBJS += \
./cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o 


# Each subdirectory must supply rules for building sources it contributes
cmsis/CMSIS/NN/Source/SVDFunctions/%.o cmsis/CMSIS/NN/Source/SVDFunctions/%.su: ../cmsis/CMSIS/NN/Source/SVDFunctions/%.c cmsis/CMSIS/NN/Source/SVDFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../tensorflow_lite_micro_files -I../tensorflow_lite_micro_files/third_party/flatbuffers/include -I../tensorflow_lite_micro_files/third_party/gemmlowp -I../tensorflow_lite_micro_files/third_party/ruy/ruy -I../cmsis -I../cmsis/CMSIS/DSP/Include -I../cmsis/CMSIS/NN/Include -I../cmsis/CMSIS/Core/Include -O0 -ffunction-sections -fdata-sections -Wall -DCMSIS_NN -DESP_PLATFORM -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-SVDFunctions

clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-SVDFunctions:
	-$(RM) ./cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d ./cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o ./cmsis/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.su

.PHONY: clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-SVDFunctions

