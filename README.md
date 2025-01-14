# STM32L4 TFLite Embedded AI Project

This repository contains an embedded AI project for STM32L4 microcontrollers, ideal for low-power applications. The project leverages the TensorFlow Lite for Microcontrollers (TFLite) library to execute AI models on constrained devices. The development was done using STM32CubeIDE.

## Features
- **Platform**: STM32L4 microcontrollers (tested on STM32L496ZGTx).
- **AI Execution**: TensorFlow Lite for Microcontrollers.
- **Development Environment**: STM32CubeIDE.
- **Low Power**: Optimized for energy-efficient applications.

## Folder Structure
- **Core**: Application code, including `main.c` and peripheral initialization.
- **Drivers**: Hardware abstraction layer and low-level drivers.
- **Middlewares**: Middleware libraries, including TensorFlow Lite.
- **tensorflow_lib**: TensorFlow Lite binaries and related files.
- **Debug**: Compiled binaries and debug artifacts.

## Prerequisites
- STM32CubeIDE installed on your computer.
- STM32L4 hardware development board (e.g., STM32L496ZGTx).
- USB connection for flashing and debugging.

## Quick Start Guide
1. **Clone or Download the Repository**
   ```bash
   git clone https://github.com/khosbakhti/tflite_project.git
   ```
2. **Open in STM32CubeIDE**
   - Launch STM32CubeIDE.
   - Navigate to `File > Open Projects from File System...`.
   - Select the root directory of the cloned repository.

3. **Set Up the Environment**
   - Ensure the correct microcontroller is selected in the `.ioc` file.
   - Verify the TensorFlow Lite library is properly included in the build settings.

4. **Build the Project**
   - Click on the build icon or press `Ctrl+B`.
   - Ensure there are no errors in the build output.

5. **Flash the Microcontroller**
   - Connect the STM32L4 development board via USB.
   - Click on the debug icon or press `F11` to flash and start debugging.

6. **Run the AI Model**
   - After flashing, the code executes the AI model using TFLite.
   - Monitor the output through UART or other debugging interfaces.

## Camera and Decoder Details
This project includes support for camera input processing. The following details highlight the specific camera and decoder implementation:

- **Camera Used**: The project is configured to interface with a camera module. This module supports low-power operation and is suitable for embedded applications.
- **Decoder Code**: The decoder implementation is part of the `Core` folder and handles YUV to RGB conversion, resizing, and preprocessing for AI model input. Look for `camera_decoder.c` and `camera_decoder.h` files for detailed code.

### Integration Steps:
- Ensure the camera module is correctly connected to the microcontroller pins as specified in the `Core/Inc/pin_config.h`.
- Modify camera-specific configurations in `camera_init()` if a different camera module is used.
- The decoded frames are fed directly into the TensorFlow Lite interpreter for inference.

## Customization
- **AI Model**: Replace the model in `Core/` with your custom TFLite model.
- **Peripheral Configuration**: Modify the `.ioc` file and regenerate the code to configure additional peripherals.
- **Memory Configuration**: Adjust memory layout in `STM32L496ZGTX_FLASH.ld` or `STM32L496ZGTX_RAM.ld` if required.

## References
- [STM32CubeIDE Documentation](https://www.st.com/en/development-tools/stm32cubeide.html)
- [TensorFlow Lite for Microcontrollers](https://www.tensorflow.org/lite/microcontrollers)

## Support
If you encounter issues, please open an issue in this repository or consult the STM32 and TensorFlow Lite documentation.

