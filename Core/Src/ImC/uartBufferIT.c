/*
 * uartBufferIT.h
 *
 *  Created on: Aug 22, 2022
 *      Author: yoojin.lim
 *
 *  1. Current MAX buffer size : 65535 (ref. range of uint16)
 *  2. Consider DMA and circular queue if you need data read over 65535 bytes
 */

#include <stdio.h>

#include "main.h"
#include "ImC/uartBufferIT.h"
#include "string.h"

uint8_t		rxBuffer[RX_BUFFER_SIZE];

/* Initialize the Ring Buffer */
void uartBufferInit (void)
{
	memset(rxBuffer, '\0', RX_BUFFER_SIZE);
	HAL_UARTEx_ReceiveToIdle_IT	(&UART, (uint8_t *) rxBuffer, RX_BUFFER_SIZE);
}

/* Resets the Ring buffer */
void uartBufferReset (void)
{
	memset(rxBuffer, '\0', RX_BUFFER_SIZE);
}

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size)
{
	if (huart->Instance == UART_INSTANCE)
	{
		/* start the interrupt again */
		HAL_UARTEx_ReceiveToIdle_IT	(&UART, (uint8_t *) rxBuffer, RX_BUFFER_SIZE);
	}
	printf("%s\r\n", rxBuffer);

	// DO SOMETHING HERE

	uartBufferReset();
}
