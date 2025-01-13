################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite_micro_src/activations.cc \
../tensorflow_lite_micro_src/add.cc \
../tensorflow_lite_micro_src/add_n.cc \
../tensorflow_lite_micro_src/all_ops_resolver.cc \
../tensorflow_lite_micro_src/arg_min_max.cc \
../tensorflow_lite_micro_src/batch_to_space_nd.cc \
../tensorflow_lite_micro_src/cast.cc \
../tensorflow_lite_micro_src/ceil.cc \
../tensorflow_lite_micro_src/circular_buffer.cc \
../tensorflow_lite_micro_src/comparisons.cc \
../tensorflow_lite_micro_src/concatenation.cc \
../tensorflow_lite_micro_src/constants.cc \
../tensorflow_lite_micro_src/conv.cc \
../tensorflow_lite_micro_src/conv_common.cc \
../tensorflow_lite_micro_src/cumsum.cc \
../tensorflow_lite_micro_src/debug_log.cc \
../tensorflow_lite_micro_src/depth_to_space.cc \
../tensorflow_lite_micro_src/depthwise_conv.cc \
../tensorflow_lite_micro_src/depthwise_conv_common.cc \
../tensorflow_lite_micro_src/dequantize.cc \
../tensorflow_lite_micro_src/detection_postprocess.cc \
../tensorflow_lite_micro_src/elementwise.cc \
../tensorflow_lite_micro_src/elu.cc \
../tensorflow_lite_micro_src/error_reporter.cc \
../tensorflow_lite_micro_src/ethosu.cc \
../tensorflow_lite_micro_src/exp.cc \
../tensorflow_lite_micro_src/expand_dims.cc \
../tensorflow_lite_micro_src/fill.cc \
../tensorflow_lite_micro_src/flatbuffer_conversions.cc \
../tensorflow_lite_micro_src/floor.cc \
../tensorflow_lite_micro_src/floor_div.cc \
../tensorflow_lite_micro_src/floor_mod.cc \
../tensorflow_lite_micro_src/fully_connected.cc \
../tensorflow_lite_micro_src/fully_connected_common.cc \
../tensorflow_lite_micro_src/gather.cc \
../tensorflow_lite_micro_src/gather_nd.cc \
../tensorflow_lite_micro_src/greedy_memory_planner.cc \
../tensorflow_lite_micro_src/hard_swish.cc \
../tensorflow_lite_micro_src/if.cc \
../tensorflow_lite_micro_src/kernel_runner.cc \
../tensorflow_lite_micro_src/kernel_util.cc \
../tensorflow_lite_micro_src/kernel_util_2.cc \
../tensorflow_lite_micro_src/l2_pool_2d.cc \
../tensorflow_lite_micro_src/l2norm.cc \
../tensorflow_lite_micro_src/leaky_relu.cc \
../tensorflow_lite_micro_src/linear_memory_planner.cc \
../tensorflow_lite_micro_src/log_softmax.cc \
../tensorflow_lite_micro_src/logical.cc \
../tensorflow_lite_micro_src/logistic.cc \
../tensorflow_lite_micro_src/maximum_minimum.cc \
../tensorflow_lite_micro_src/memory_helpers.cc \
../tensorflow_lite_micro_src/micro_allocator.cc \
../tensorflow_lite_micro_src/micro_error_reporter.cc \
../tensorflow_lite_micro_src/micro_graph.cc \
../tensorflow_lite_micro_src/micro_interpreter.cc \
../tensorflow_lite_micro_src/micro_profiler.cc \
../tensorflow_lite_micro_src/micro_string.cc \
../tensorflow_lite_micro_src/micro_time.cc \
../tensorflow_lite_micro_src/micro_utils.cc \
../tensorflow_lite_micro_src/mock_micro_graph.cc \
../tensorflow_lite_micro_src/model.cc \
../tensorflow_lite_micro_src/mul.cc \
../tensorflow_lite_micro_src/neg.cc \
../tensorflow_lite_micro_src/op_resolver.cc \
../tensorflow_lite_micro_src/output_handler.cc \
../tensorflow_lite_micro_src/pack.cc \
../tensorflow_lite_micro_src/pad.cc \
../tensorflow_lite_micro_src/pooling.cc \
../tensorflow_lite_micro_src/prelu.cc \
../tensorflow_lite_micro_src/quantization_util.cc \
../tensorflow_lite_micro_src/quantize.cc \
../tensorflow_lite_micro_src/quantize_common.cc \
../tensorflow_lite_micro_src/recording_micro_allocator.cc \
../tensorflow_lite_micro_src/recording_simple_memory_allocator.cc \
../tensorflow_lite_micro_src/reduce.cc \
../tensorflow_lite_micro_src/reshape.cc \
../tensorflow_lite_micro_src/resize_bilinear.cc \
../tensorflow_lite_micro_src/resize_nearest_neighbor.cc \
../tensorflow_lite_micro_src/round.cc \
../tensorflow_lite_micro_src/schema_utils.cc \
../tensorflow_lite_micro_src/shape.cc \
../tensorflow_lite_micro_src/simple_memory_allocator.cc \
../tensorflow_lite_micro_src/softmax.cc \
../tensorflow_lite_micro_src/softmax_common.cc \
../tensorflow_lite_micro_src/space_to_batch_nd.cc \
../tensorflow_lite_micro_src/split.cc \
../tensorflow_lite_micro_src/split_v.cc \
../tensorflow_lite_micro_src/squeeze.cc \
../tensorflow_lite_micro_src/strided_slice.cc \
../tensorflow_lite_micro_src/sub.cc \
../tensorflow_lite_micro_src/svdf.cc \
../tensorflow_lite_micro_src/svdf_common.cc \
../tensorflow_lite_micro_src/system_setup.cc \
../tensorflow_lite_micro_src/tanh.cc \
../tensorflow_lite_micro_src/tensor_utils.cc \
../tensorflow_lite_micro_src/test_helpers.cc \
../tensorflow_lite_micro_src/transpose.cc \
../tensorflow_lite_micro_src/transpose_conv.cc \
../tensorflow_lite_micro_src/unpack.cc \
../tensorflow_lite_micro_src/zeros_like.cc 

C_SRCS += \
../tensorflow_lite_micro_src/common.c \
../tensorflow_lite_micro_src/strings.c 

C_DEPS += \
./tensorflow_lite_micro_src/common.d \
./tensorflow_lite_micro_src/strings.d 

CC_DEPS += \
./tensorflow_lite_micro_src/activations.d \
./tensorflow_lite_micro_src/add.d \
./tensorflow_lite_micro_src/add_n.d \
./tensorflow_lite_micro_src/all_ops_resolver.d \
./tensorflow_lite_micro_src/arg_min_max.d \
./tensorflow_lite_micro_src/batch_to_space_nd.d \
./tensorflow_lite_micro_src/cast.d \
./tensorflow_lite_micro_src/ceil.d \
./tensorflow_lite_micro_src/circular_buffer.d \
./tensorflow_lite_micro_src/comparisons.d \
./tensorflow_lite_micro_src/concatenation.d \
./tensorflow_lite_micro_src/constants.d \
./tensorflow_lite_micro_src/conv.d \
./tensorflow_lite_micro_src/conv_common.d \
./tensorflow_lite_micro_src/cumsum.d \
./tensorflow_lite_micro_src/debug_log.d \
./tensorflow_lite_micro_src/depth_to_space.d \
./tensorflow_lite_micro_src/depthwise_conv.d \
./tensorflow_lite_micro_src/depthwise_conv_common.d \
./tensorflow_lite_micro_src/dequantize.d \
./tensorflow_lite_micro_src/detection_postprocess.d \
./tensorflow_lite_micro_src/elementwise.d \
./tensorflow_lite_micro_src/elu.d \
./tensorflow_lite_micro_src/error_reporter.d \
./tensorflow_lite_micro_src/ethosu.d \
./tensorflow_lite_micro_src/exp.d \
./tensorflow_lite_micro_src/expand_dims.d \
./tensorflow_lite_micro_src/fill.d \
./tensorflow_lite_micro_src/flatbuffer_conversions.d \
./tensorflow_lite_micro_src/floor.d \
./tensorflow_lite_micro_src/floor_div.d \
./tensorflow_lite_micro_src/floor_mod.d \
./tensorflow_lite_micro_src/fully_connected.d \
./tensorflow_lite_micro_src/fully_connected_common.d \
./tensorflow_lite_micro_src/gather.d \
./tensorflow_lite_micro_src/gather_nd.d \
./tensorflow_lite_micro_src/greedy_memory_planner.d \
./tensorflow_lite_micro_src/hard_swish.d \
./tensorflow_lite_micro_src/if.d \
./tensorflow_lite_micro_src/kernel_runner.d \
./tensorflow_lite_micro_src/kernel_util.d \
./tensorflow_lite_micro_src/kernel_util_2.d \
./tensorflow_lite_micro_src/l2_pool_2d.d \
./tensorflow_lite_micro_src/l2norm.d \
./tensorflow_lite_micro_src/leaky_relu.d \
./tensorflow_lite_micro_src/linear_memory_planner.d \
./tensorflow_lite_micro_src/log_softmax.d \
./tensorflow_lite_micro_src/logical.d \
./tensorflow_lite_micro_src/logistic.d \
./tensorflow_lite_micro_src/maximum_minimum.d \
./tensorflow_lite_micro_src/memory_helpers.d \
./tensorflow_lite_micro_src/micro_allocator.d \
./tensorflow_lite_micro_src/micro_error_reporter.d \
./tensorflow_lite_micro_src/micro_graph.d \
./tensorflow_lite_micro_src/micro_interpreter.d \
./tensorflow_lite_micro_src/micro_profiler.d \
./tensorflow_lite_micro_src/micro_string.d \
./tensorflow_lite_micro_src/micro_time.d \
./tensorflow_lite_micro_src/micro_utils.d \
./tensorflow_lite_micro_src/mock_micro_graph.d \
./tensorflow_lite_micro_src/model.d \
./tensorflow_lite_micro_src/mul.d \
./tensorflow_lite_micro_src/neg.d \
./tensorflow_lite_micro_src/op_resolver.d \
./tensorflow_lite_micro_src/output_handler.d \
./tensorflow_lite_micro_src/pack.d \
./tensorflow_lite_micro_src/pad.d \
./tensorflow_lite_micro_src/pooling.d \
./tensorflow_lite_micro_src/prelu.d \
./tensorflow_lite_micro_src/quantization_util.d \
./tensorflow_lite_micro_src/quantize.d \
./tensorflow_lite_micro_src/quantize_common.d \
./tensorflow_lite_micro_src/recording_micro_allocator.d \
./tensorflow_lite_micro_src/recording_simple_memory_allocator.d \
./tensorflow_lite_micro_src/reduce.d \
./tensorflow_lite_micro_src/reshape.d \
./tensorflow_lite_micro_src/resize_bilinear.d \
./tensorflow_lite_micro_src/resize_nearest_neighbor.d \
./tensorflow_lite_micro_src/round.d \
./tensorflow_lite_micro_src/schema_utils.d \
./tensorflow_lite_micro_src/shape.d \
./tensorflow_lite_micro_src/simple_memory_allocator.d \
./tensorflow_lite_micro_src/softmax.d \
./tensorflow_lite_micro_src/softmax_common.d \
./tensorflow_lite_micro_src/space_to_batch_nd.d \
./tensorflow_lite_micro_src/split.d \
./tensorflow_lite_micro_src/split_v.d \
./tensorflow_lite_micro_src/squeeze.d \
./tensorflow_lite_micro_src/strided_slice.d \
./tensorflow_lite_micro_src/sub.d \
./tensorflow_lite_micro_src/svdf.d \
./tensorflow_lite_micro_src/svdf_common.d \
./tensorflow_lite_micro_src/system_setup.d \
./tensorflow_lite_micro_src/tanh.d \
./tensorflow_lite_micro_src/tensor_utils.d \
./tensorflow_lite_micro_src/test_helpers.d \
./tensorflow_lite_micro_src/transpose.d \
./tensorflow_lite_micro_src/transpose_conv.d \
./tensorflow_lite_micro_src/unpack.d \
./tensorflow_lite_micro_src/zeros_like.d 

OBJS += \
./tensorflow_lite_micro_src/activations.o \
./tensorflow_lite_micro_src/add.o \
./tensorflow_lite_micro_src/add_n.o \
./tensorflow_lite_micro_src/all_ops_resolver.o \
./tensorflow_lite_micro_src/arg_min_max.o \
./tensorflow_lite_micro_src/batch_to_space_nd.o \
./tensorflow_lite_micro_src/cast.o \
./tensorflow_lite_micro_src/ceil.o \
./tensorflow_lite_micro_src/circular_buffer.o \
./tensorflow_lite_micro_src/common.o \
./tensorflow_lite_micro_src/comparisons.o \
./tensorflow_lite_micro_src/concatenation.o \
./tensorflow_lite_micro_src/constants.o \
./tensorflow_lite_micro_src/conv.o \
./tensorflow_lite_micro_src/conv_common.o \
./tensorflow_lite_micro_src/cumsum.o \
./tensorflow_lite_micro_src/debug_log.o \
./tensorflow_lite_micro_src/depth_to_space.o \
./tensorflow_lite_micro_src/depthwise_conv.o \
./tensorflow_lite_micro_src/depthwise_conv_common.o \
./tensorflow_lite_micro_src/dequantize.o \
./tensorflow_lite_micro_src/detection_postprocess.o \
./tensorflow_lite_micro_src/elementwise.o \
./tensorflow_lite_micro_src/elu.o \
./tensorflow_lite_micro_src/error_reporter.o \
./tensorflow_lite_micro_src/ethosu.o \
./tensorflow_lite_micro_src/exp.o \
./tensorflow_lite_micro_src/expand_dims.o \
./tensorflow_lite_micro_src/fill.o \
./tensorflow_lite_micro_src/flatbuffer_conversions.o \
./tensorflow_lite_micro_src/floor.o \
./tensorflow_lite_micro_src/floor_div.o \
./tensorflow_lite_micro_src/floor_mod.o \
./tensorflow_lite_micro_src/fully_connected.o \
./tensorflow_lite_micro_src/fully_connected_common.o \
./tensorflow_lite_micro_src/gather.o \
./tensorflow_lite_micro_src/gather_nd.o \
./tensorflow_lite_micro_src/greedy_memory_planner.o \
./tensorflow_lite_micro_src/hard_swish.o \
./tensorflow_lite_micro_src/if.o \
./tensorflow_lite_micro_src/kernel_runner.o \
./tensorflow_lite_micro_src/kernel_util.o \
./tensorflow_lite_micro_src/kernel_util_2.o \
./tensorflow_lite_micro_src/l2_pool_2d.o \
./tensorflow_lite_micro_src/l2norm.o \
./tensorflow_lite_micro_src/leaky_relu.o \
./tensorflow_lite_micro_src/linear_memory_planner.o \
./tensorflow_lite_micro_src/log_softmax.o \
./tensorflow_lite_micro_src/logical.o \
./tensorflow_lite_micro_src/logistic.o \
./tensorflow_lite_micro_src/maximum_minimum.o \
./tensorflow_lite_micro_src/memory_helpers.o \
./tensorflow_lite_micro_src/micro_allocator.o \
./tensorflow_lite_micro_src/micro_error_reporter.o \
./tensorflow_lite_micro_src/micro_graph.o \
./tensorflow_lite_micro_src/micro_interpreter.o \
./tensorflow_lite_micro_src/micro_profiler.o \
./tensorflow_lite_micro_src/micro_string.o \
./tensorflow_lite_micro_src/micro_time.o \
./tensorflow_lite_micro_src/micro_utils.o \
./tensorflow_lite_micro_src/mock_micro_graph.o \
./tensorflow_lite_micro_src/model.o \
./tensorflow_lite_micro_src/mul.o \
./tensorflow_lite_micro_src/neg.o \
./tensorflow_lite_micro_src/op_resolver.o \
./tensorflow_lite_micro_src/output_handler.o \
./tensorflow_lite_micro_src/pack.o \
./tensorflow_lite_micro_src/pad.o \
./tensorflow_lite_micro_src/pooling.o \
./tensorflow_lite_micro_src/prelu.o \
./tensorflow_lite_micro_src/quantization_util.o \
./tensorflow_lite_micro_src/quantize.o \
./tensorflow_lite_micro_src/quantize_common.o \
./tensorflow_lite_micro_src/recording_micro_allocator.o \
./tensorflow_lite_micro_src/recording_simple_memory_allocator.o \
./tensorflow_lite_micro_src/reduce.o \
./tensorflow_lite_micro_src/reshape.o \
./tensorflow_lite_micro_src/resize_bilinear.o \
./tensorflow_lite_micro_src/resize_nearest_neighbor.o \
./tensorflow_lite_micro_src/round.o \
./tensorflow_lite_micro_src/schema_utils.o \
./tensorflow_lite_micro_src/shape.o \
./tensorflow_lite_micro_src/simple_memory_allocator.o \
./tensorflow_lite_micro_src/softmax.o \
./tensorflow_lite_micro_src/softmax_common.o \
./tensorflow_lite_micro_src/space_to_batch_nd.o \
./tensorflow_lite_micro_src/split.o \
./tensorflow_lite_micro_src/split_v.o \
./tensorflow_lite_micro_src/squeeze.o \
./tensorflow_lite_micro_src/strided_slice.o \
./tensorflow_lite_micro_src/strings.o \
./tensorflow_lite_micro_src/sub.o \
./tensorflow_lite_micro_src/svdf.o \
./tensorflow_lite_micro_src/svdf_common.o \
./tensorflow_lite_micro_src/system_setup.o \
./tensorflow_lite_micro_src/tanh.o \
./tensorflow_lite_micro_src/tensor_utils.o \
./tensorflow_lite_micro_src/test_helpers.o \
./tensorflow_lite_micro_src/transpose.o \
./tensorflow_lite_micro_src/transpose_conv.o \
./tensorflow_lite_micro_src/unpack.o \
./tensorflow_lite_micro_src/zeros_like.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite_micro_src/%.o tensorflow_lite_micro_src/%.su: ../tensorflow_lite_micro_src/%.cc tensorflow_lite_micro_src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../tensorflow_lite_micro_files -I../tensorflow_lite_micro_files/third_party/flatbuffers/include -I../tensorflow_lite_micro_files/third_party/gemmlowp -I../tensorflow_lite_micro_files/third_party/ruy/ruy -I../cmsis -I../cmsis/CMSIS/DSP/Include -I../cmsis/CMSIS/NN/Include -I../cmsis/CMSIS/Core/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -DCMSIS_NN -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
tensorflow_lite_micro_src/%.o tensorflow_lite_micro_src/%.su: ../tensorflow_lite_micro_src/%.c tensorflow_lite_micro_src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L496xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../tensorflow_lite_micro_files -I../tensorflow_lite_micro_files/third_party/flatbuffers/include -I../tensorflow_lite_micro_files/third_party/gemmlowp -I../tensorflow_lite_micro_files/third_party/ruy/ruy -I../cmsis -I../cmsis/CMSIS/DSP/Include -I../cmsis/CMSIS/NN/Include -I../cmsis/CMSIS/Core/Include -O0 -ffunction-sections -fdata-sections -Wall -DCMSIS_NN -DESP_PLATFORM -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow_lite_micro_src

clean-tensorflow_lite_micro_src:
	-$(RM) ./tensorflow_lite_micro_src/activations.d ./tensorflow_lite_micro_src/activations.o ./tensorflow_lite_micro_src/activations.su ./tensorflow_lite_micro_src/add.d ./tensorflow_lite_micro_src/add.o ./tensorflow_lite_micro_src/add.su ./tensorflow_lite_micro_src/add_n.d ./tensorflow_lite_micro_src/add_n.o ./tensorflow_lite_micro_src/add_n.su ./tensorflow_lite_micro_src/all_ops_resolver.d ./tensorflow_lite_micro_src/all_ops_resolver.o ./tensorflow_lite_micro_src/all_ops_resolver.su ./tensorflow_lite_micro_src/arg_min_max.d ./tensorflow_lite_micro_src/arg_min_max.o ./tensorflow_lite_micro_src/arg_min_max.su ./tensorflow_lite_micro_src/batch_to_space_nd.d ./tensorflow_lite_micro_src/batch_to_space_nd.o ./tensorflow_lite_micro_src/batch_to_space_nd.su ./tensorflow_lite_micro_src/cast.d ./tensorflow_lite_micro_src/cast.o ./tensorflow_lite_micro_src/cast.su ./tensorflow_lite_micro_src/ceil.d ./tensorflow_lite_micro_src/ceil.o ./tensorflow_lite_micro_src/ceil.su ./tensorflow_lite_micro_src/circular_buffer.d ./tensorflow_lite_micro_src/circular_buffer.o ./tensorflow_lite_micro_src/circular_buffer.su ./tensorflow_lite_micro_src/common.d ./tensorflow_lite_micro_src/common.o ./tensorflow_lite_micro_src/common.su ./tensorflow_lite_micro_src/comparisons.d ./tensorflow_lite_micro_src/comparisons.o ./tensorflow_lite_micro_src/comparisons.su ./tensorflow_lite_micro_src/concatenation.d ./tensorflow_lite_micro_src/concatenation.o ./tensorflow_lite_micro_src/concatenation.su ./tensorflow_lite_micro_src/constants.d ./tensorflow_lite_micro_src/constants.o ./tensorflow_lite_micro_src/constants.su ./tensorflow_lite_micro_src/conv.d ./tensorflow_lite_micro_src/conv.o ./tensorflow_lite_micro_src/conv.su ./tensorflow_lite_micro_src/conv_common.d ./tensorflow_lite_micro_src/conv_common.o ./tensorflow_lite_micro_src/conv_common.su ./tensorflow_lite_micro_src/cumsum.d ./tensorflow_lite_micro_src/cumsum.o ./tensorflow_lite_micro_src/cumsum.su ./tensorflow_lite_micro_src/debug_log.d ./tensorflow_lite_micro_src/debug_log.o ./tensorflow_lite_micro_src/debug_log.su ./tensorflow_lite_micro_src/depth_to_space.d ./tensorflow_lite_micro_src/depth_to_space.o ./tensorflow_lite_micro_src/depth_to_space.su ./tensorflow_lite_micro_src/depthwise_conv.d ./tensorflow_lite_micro_src/depthwise_conv.o ./tensorflow_lite_micro_src/depthwise_conv.su ./tensorflow_lite_micro_src/depthwise_conv_common.d ./tensorflow_lite_micro_src/depthwise_conv_common.o ./tensorflow_lite_micro_src/depthwise_conv_common.su ./tensorflow_lite_micro_src/dequantize.d ./tensorflow_lite_micro_src/dequantize.o ./tensorflow_lite_micro_src/dequantize.su ./tensorflow_lite_micro_src/detection_postprocess.d ./tensorflow_lite_micro_src/detection_postprocess.o ./tensorflow_lite_micro_src/detection_postprocess.su ./tensorflow_lite_micro_src/elementwise.d ./tensorflow_lite_micro_src/elementwise.o ./tensorflow_lite_micro_src/elementwise.su ./tensorflow_lite_micro_src/elu.d ./tensorflow_lite_micro_src/elu.o ./tensorflow_lite_micro_src/elu.su ./tensorflow_lite_micro_src/error_reporter.d ./tensorflow_lite_micro_src/error_reporter.o ./tensorflow_lite_micro_src/error_reporter.su ./tensorflow_lite_micro_src/ethosu.d ./tensorflow_lite_micro_src/ethosu.o ./tensorflow_lite_micro_src/ethosu.su ./tensorflow_lite_micro_src/exp.d ./tensorflow_lite_micro_src/exp.o ./tensorflow_lite_micro_src/exp.su ./tensorflow_lite_micro_src/expand_dims.d ./tensorflow_lite_micro_src/expand_dims.o ./tensorflow_lite_micro_src/expand_dims.su ./tensorflow_lite_micro_src/fill.d ./tensorflow_lite_micro_src/fill.o ./tensorflow_lite_micro_src/fill.su ./tensorflow_lite_micro_src/flatbuffer_conversions.d ./tensorflow_lite_micro_src/flatbuffer_conversions.o ./tensorflow_lite_micro_src/flatbuffer_conversions.su ./tensorflow_lite_micro_src/floor.d ./tensorflow_lite_micro_src/floor.o ./tensorflow_lite_micro_src/floor.su ./tensorflow_lite_micro_src/floor_div.d ./tensorflow_lite_micro_src/floor_div.o ./tensorflow_lite_micro_src/floor_div.su ./tensorflow_lite_micro_src/floor_mod.d ./tensorflow_lite_micro_src/floor_mod.o ./tensorflow_lite_micro_src/floor_mod.su ./tensorflow_lite_micro_src/fully_connected.d ./tensorflow_lite_micro_src/fully_connected.o ./tensorflow_lite_micro_src/fully_connected.su ./tensorflow_lite_micro_src/fully_connected_common.d ./tensorflow_lite_micro_src/fully_connected_common.o ./tensorflow_lite_micro_src/fully_connected_common.su ./tensorflow_lite_micro_src/gather.d ./tensorflow_lite_micro_src/gather.o ./tensorflow_lite_micro_src/gather.su ./tensorflow_lite_micro_src/gather_nd.d ./tensorflow_lite_micro_src/gather_nd.o ./tensorflow_lite_micro_src/gather_nd.su ./tensorflow_lite_micro_src/greedy_memory_planner.d ./tensorflow_lite_micro_src/greedy_memory_planner.o ./tensorflow_lite_micro_src/greedy_memory_planner.su ./tensorflow_lite_micro_src/hard_swish.d ./tensorflow_lite_micro_src/hard_swish.o ./tensorflow_lite_micro_src/hard_swish.su ./tensorflow_lite_micro_src/if.d ./tensorflow_lite_micro_src/if.o ./tensorflow_lite_micro_src/if.su ./tensorflow_lite_micro_src/kernel_runner.d ./tensorflow_lite_micro_src/kernel_runner.o ./tensorflow_lite_micro_src/kernel_runner.su ./tensorflow_lite_micro_src/kernel_util.d ./tensorflow_lite_micro_src/kernel_util.o ./tensorflow_lite_micro_src/kernel_util.su ./tensorflow_lite_micro_src/kernel_util_2.d ./tensorflow_lite_micro_src/kernel_util_2.o ./tensorflow_lite_micro_src/kernel_util_2.su ./tensorflow_lite_micro_src/l2_pool_2d.d ./tensorflow_lite_micro_src/l2_pool_2d.o ./tensorflow_lite_micro_src/l2_pool_2d.su ./tensorflow_lite_micro_src/l2norm.d ./tensorflow_lite_micro_src/l2norm.o ./tensorflow_lite_micro_src/l2norm.su ./tensorflow_lite_micro_src/leaky_relu.d ./tensorflow_lite_micro_src/leaky_relu.o ./tensorflow_lite_micro_src/leaky_relu.su ./tensorflow_lite_micro_src/linear_memory_planner.d ./tensorflow_lite_micro_src/linear_memory_planner.o ./tensorflow_lite_micro_src/linear_memory_planner.su ./tensorflow_lite_micro_src/log_softmax.d
	-$(RM) ./tensorflow_lite_micro_src/log_softmax.o ./tensorflow_lite_micro_src/log_softmax.su ./tensorflow_lite_micro_src/logical.d ./tensorflow_lite_micro_src/logical.o ./tensorflow_lite_micro_src/logical.su ./tensorflow_lite_micro_src/logistic.d ./tensorflow_lite_micro_src/logistic.o ./tensorflow_lite_micro_src/logistic.su ./tensorflow_lite_micro_src/maximum_minimum.d ./tensorflow_lite_micro_src/maximum_minimum.o ./tensorflow_lite_micro_src/maximum_minimum.su ./tensorflow_lite_micro_src/memory_helpers.d ./tensorflow_lite_micro_src/memory_helpers.o ./tensorflow_lite_micro_src/memory_helpers.su ./tensorflow_lite_micro_src/micro_allocator.d ./tensorflow_lite_micro_src/micro_allocator.o ./tensorflow_lite_micro_src/micro_allocator.su ./tensorflow_lite_micro_src/micro_error_reporter.d ./tensorflow_lite_micro_src/micro_error_reporter.o ./tensorflow_lite_micro_src/micro_error_reporter.su ./tensorflow_lite_micro_src/micro_graph.d ./tensorflow_lite_micro_src/micro_graph.o ./tensorflow_lite_micro_src/micro_graph.su ./tensorflow_lite_micro_src/micro_interpreter.d ./tensorflow_lite_micro_src/micro_interpreter.o ./tensorflow_lite_micro_src/micro_interpreter.su ./tensorflow_lite_micro_src/micro_profiler.d ./tensorflow_lite_micro_src/micro_profiler.o ./tensorflow_lite_micro_src/micro_profiler.su ./tensorflow_lite_micro_src/micro_string.d ./tensorflow_lite_micro_src/micro_string.o ./tensorflow_lite_micro_src/micro_string.su ./tensorflow_lite_micro_src/micro_time.d ./tensorflow_lite_micro_src/micro_time.o ./tensorflow_lite_micro_src/micro_time.su ./tensorflow_lite_micro_src/micro_utils.d ./tensorflow_lite_micro_src/micro_utils.o ./tensorflow_lite_micro_src/micro_utils.su ./tensorflow_lite_micro_src/mock_micro_graph.d ./tensorflow_lite_micro_src/mock_micro_graph.o ./tensorflow_lite_micro_src/mock_micro_graph.su ./tensorflow_lite_micro_src/model.d ./tensorflow_lite_micro_src/model.o ./tensorflow_lite_micro_src/model.su ./tensorflow_lite_micro_src/mul.d ./tensorflow_lite_micro_src/mul.o ./tensorflow_lite_micro_src/mul.su ./tensorflow_lite_micro_src/neg.d ./tensorflow_lite_micro_src/neg.o ./tensorflow_lite_micro_src/neg.su ./tensorflow_lite_micro_src/op_resolver.d ./tensorflow_lite_micro_src/op_resolver.o ./tensorflow_lite_micro_src/op_resolver.su ./tensorflow_lite_micro_src/output_handler.d ./tensorflow_lite_micro_src/output_handler.o ./tensorflow_lite_micro_src/output_handler.su ./tensorflow_lite_micro_src/pack.d ./tensorflow_lite_micro_src/pack.o ./tensorflow_lite_micro_src/pack.su ./tensorflow_lite_micro_src/pad.d ./tensorflow_lite_micro_src/pad.o ./tensorflow_lite_micro_src/pad.su ./tensorflow_lite_micro_src/pooling.d ./tensorflow_lite_micro_src/pooling.o ./tensorflow_lite_micro_src/pooling.su ./tensorflow_lite_micro_src/prelu.d ./tensorflow_lite_micro_src/prelu.o ./tensorflow_lite_micro_src/prelu.su ./tensorflow_lite_micro_src/quantization_util.d ./tensorflow_lite_micro_src/quantization_util.o ./tensorflow_lite_micro_src/quantization_util.su ./tensorflow_lite_micro_src/quantize.d ./tensorflow_lite_micro_src/quantize.o ./tensorflow_lite_micro_src/quantize.su ./tensorflow_lite_micro_src/quantize_common.d ./tensorflow_lite_micro_src/quantize_common.o ./tensorflow_lite_micro_src/quantize_common.su ./tensorflow_lite_micro_src/recording_micro_allocator.d ./tensorflow_lite_micro_src/recording_micro_allocator.o ./tensorflow_lite_micro_src/recording_micro_allocator.su ./tensorflow_lite_micro_src/recording_simple_memory_allocator.d ./tensorflow_lite_micro_src/recording_simple_memory_allocator.o ./tensorflow_lite_micro_src/recording_simple_memory_allocator.su ./tensorflow_lite_micro_src/reduce.d ./tensorflow_lite_micro_src/reduce.o ./tensorflow_lite_micro_src/reduce.su ./tensorflow_lite_micro_src/reshape.d ./tensorflow_lite_micro_src/reshape.o ./tensorflow_lite_micro_src/reshape.su ./tensorflow_lite_micro_src/resize_bilinear.d ./tensorflow_lite_micro_src/resize_bilinear.o ./tensorflow_lite_micro_src/resize_bilinear.su ./tensorflow_lite_micro_src/resize_nearest_neighbor.d ./tensorflow_lite_micro_src/resize_nearest_neighbor.o ./tensorflow_lite_micro_src/resize_nearest_neighbor.su ./tensorflow_lite_micro_src/round.d ./tensorflow_lite_micro_src/round.o ./tensorflow_lite_micro_src/round.su ./tensorflow_lite_micro_src/schema_utils.d ./tensorflow_lite_micro_src/schema_utils.o ./tensorflow_lite_micro_src/schema_utils.su ./tensorflow_lite_micro_src/shape.d ./tensorflow_lite_micro_src/shape.o ./tensorflow_lite_micro_src/shape.su ./tensorflow_lite_micro_src/simple_memory_allocator.d ./tensorflow_lite_micro_src/simple_memory_allocator.o ./tensorflow_lite_micro_src/simple_memory_allocator.su ./tensorflow_lite_micro_src/softmax.d ./tensorflow_lite_micro_src/softmax.o ./tensorflow_lite_micro_src/softmax.su ./tensorflow_lite_micro_src/softmax_common.d ./tensorflow_lite_micro_src/softmax_common.o ./tensorflow_lite_micro_src/softmax_common.su ./tensorflow_lite_micro_src/space_to_batch_nd.d ./tensorflow_lite_micro_src/space_to_batch_nd.o ./tensorflow_lite_micro_src/space_to_batch_nd.su ./tensorflow_lite_micro_src/split.d ./tensorflow_lite_micro_src/split.o ./tensorflow_lite_micro_src/split.su ./tensorflow_lite_micro_src/split_v.d ./tensorflow_lite_micro_src/split_v.o ./tensorflow_lite_micro_src/split_v.su ./tensorflow_lite_micro_src/squeeze.d ./tensorflow_lite_micro_src/squeeze.o ./tensorflow_lite_micro_src/squeeze.su ./tensorflow_lite_micro_src/strided_slice.d ./tensorflow_lite_micro_src/strided_slice.o ./tensorflow_lite_micro_src/strided_slice.su ./tensorflow_lite_micro_src/strings.d ./tensorflow_lite_micro_src/strings.o ./tensorflow_lite_micro_src/strings.su ./tensorflow_lite_micro_src/sub.d ./tensorflow_lite_micro_src/sub.o ./tensorflow_lite_micro_src/sub.su ./tensorflow_lite_micro_src/svdf.d ./tensorflow_lite_micro_src/svdf.o ./tensorflow_lite_micro_src/svdf.su ./tensorflow_lite_micro_src/svdf_common.d ./tensorflow_lite_micro_src/svdf_common.o ./tensorflow_lite_micro_src/svdf_common.su ./tensorflow_lite_micro_src/system_setup.d
	-$(RM) ./tensorflow_lite_micro_src/system_setup.o ./tensorflow_lite_micro_src/system_setup.su ./tensorflow_lite_micro_src/tanh.d ./tensorflow_lite_micro_src/tanh.o ./tensorflow_lite_micro_src/tanh.su ./tensorflow_lite_micro_src/tensor_utils.d ./tensorflow_lite_micro_src/tensor_utils.o ./tensorflow_lite_micro_src/tensor_utils.su ./tensorflow_lite_micro_src/test_helpers.d ./tensorflow_lite_micro_src/test_helpers.o ./tensorflow_lite_micro_src/test_helpers.su ./tensorflow_lite_micro_src/transpose.d ./tensorflow_lite_micro_src/transpose.o ./tensorflow_lite_micro_src/transpose.su ./tensorflow_lite_micro_src/transpose_conv.d ./tensorflow_lite_micro_src/transpose_conv.o ./tensorflow_lite_micro_src/transpose_conv.su ./tensorflow_lite_micro_src/unpack.d ./tensorflow_lite_micro_src/unpack.o ./tensorflow_lite_micro_src/unpack.su ./tensorflow_lite_micro_src/zeros_like.d ./tensorflow_lite_micro_src/zeros_like.o ./tensorflow_lite_micro_src/zeros_like.su

.PHONY: clean-tensorflow_lite_micro_src

