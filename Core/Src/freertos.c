/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"
#include "ImC/decoder.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>


//INCLUDE THIS LIBRARY WHEN USING THE ARCHIVE
#include "ImC/ai.h"
//##include "tensorflow/lite/micro/examples/hello_world/main_functions.h"
#include "gpio.h"
#include "usart.h"
#include "sc03mpd/sc03mpd.h"
#include "ImC/imc_api.h"
#include "ImC/uartBufferIT.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
osThreadId taskFlkrHandle;
uint32_t taskFlkrBuffer[ 256 ];
osStaticThreadDef_t taskFlkrControlBlock;
osThreadId taskSnapHandle;
uint32_t taskSnapBuffer[ 10000 ];
osStaticThreadDef_t taskSnapControlBlock;
osThreadId taskAIHandle;
#define AI_BUFFER_SIZE 32000
uint32_t taskAIBuffer[ AI_BUFFER_SIZE ];
osStaticThreadDef_t taskAIControlBlock;
osMessageQId queueSnapReqHandle;
uint8_t queueSnapBuffer[ 1 * sizeof( uint16_t ) ];
osStaticMessageQDef_t queueSnapControlBlock;

osStaticSemaphoreDef_t  full_semaphore_buffer;
osSemaphoreDef_t full_semaphore;
SemaphoreHandle_t full;

osStaticSemaphoreDef_t  empty_semaphore_buffer;
osSemaphoreDef_t empty_semaphore;
SemaphoreHandle_t empty;

osStaticSemaphoreDef_t  cam_semaphore_buffer;
osSemaphoreDef_t cam_semaphore;
SemaphoreHandle_t cam;


void vApplicationStackOverflowHook(TaskHandle_t* pxTask , char*         pcTaskName ) {

  __disable_irq();

  printf(pcTaskName);
//todo: Indicate Overflow with LEDs
  printf("stack overflow\r\n");
  for(;;) ;


}

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN FunctionPrototypes */


int32_t hal_uart_ifx_send(sc03mpd_ifx_t* ifx, uint8_t* buf, uint16_t len);
int32_t hal_uart_ifx_recv(sc03mpd_ifx_t* ifx, uint8_t* buf, uint16_t len);

/* USER CODE END FunctionPrototypes */

void TaskFlkrRunner(void const * argument);
void TaskSnapRunner(void const * argument);
void taskAIRunner(void const * argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* GetTimerTaskMemory prototype (linked to static allocation support) */
void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize );

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}


static StaticTask_t xTimerTaskTCBBuffer;
static StackType_t xTimerStack[configTIMER_TASK_STACK_DEPTH];

void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize )
{
  *ppxTimerTaskTCBBuffer = &xTimerTaskTCBBuffer;
  *ppxTimerTaskStackBuffer = &xTimerStack[0];
  *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
  /* place for user code */
}




void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */
  full_semaphore.controlblock = &full_semaphore_buffer;
  full_semaphore.dummy = 0;
  full = osSemaphoreCreate(&full_semaphore, 1);

  empty_semaphore.controlblock = &empty_semaphore_buffer;
  empty_semaphore.dummy = 0;
  empty = osSemaphoreCreate(&empty_semaphore, 1);

  cam_semaphore.controlblock = &cam_semaphore_buffer;
  cam_semaphore.dummy = 0;
  cam = osSemaphoreCreate(&cam_semaphore, 1);






  // release is to give
  // wait to take


  /* Create the queue(s) */
  /* definition and creation of queueSnapReq */
  osMessageQStaticDef(queueSnapReq, 1, uint16_t, queueSnapBuffer, &queueSnapControlBlock);
  queueSnapReqHandle = osMessageCreate(osMessageQ(queueSnapReq), NULL);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */


  /* Create the thread(s) */
  /* definition and creation of taskFlkr */
//  osThreadStaticDef(taskFlkr, TaskFlkrRunner, osPriorityNormal, 0, 256, taskFlkrBuffer, &taskFlkrControlBlock);
//  taskFlkrHandle = osThreadCreate(osThread(taskFlkr), NULL);

  /* definition and creation of taskSnap */
  osThreadStaticDef(taskSnap, TaskSnapRunner, osPriorityNormal, 0, 10000, taskSnapBuffer, &taskSnapControlBlock);
  taskSnapHandle = osThreadCreate(osThread(taskSnap), NULL);

  /* definition and creation of taskAI */
  osThreadStaticDef(taskAI, taskAIRunner, osPriorityNormal, 0, AI_BUFFER_SIZE, taskAIBuffer, &taskAIControlBlock);
  taskAIHandle = osThreadCreate(osThread(taskAI), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_TaskFlkrRunner */
/**
  * @brief  Function implementing the taskFlkr thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_TaskFlkrRunner */
void TaskFlkrRunner(void const * argument)
{
  /* USER CODE BEGIN TaskFlkrRunner */
	/* Infinite loop */
	uint8_t	ledSet1[4] = {0,1,0,1};	// e.q. LED1 ON and LED3 ON
	while (1) {
		//imc_led_blink (ledSet1, NUM_OF_LED, 500);
	}

//	osDelay(1000);
	osThreadTerminate(NULL);
  /* USER CODE END TaskFlkrRunner */
}

/* USER CODE BEGIN Header_TaskSnapRunner */
/**
* @brief Function implementing the taskSnap thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_TaskSnapRunner */
extern uint16_t ilen;
void TaskSnapRunner(void const * argument)
{

	int failed_captures = 0;
	int total_captures = 0;
	int ret_val = 1;



  /* USER CODE BEGIN TaskSnapRunner */
	sc03mpd_ifx_t ifx = {
	.context = (void*)&huart1,
	.sendif  = hal_uart_ifx_send,
	.recvif  = hal_uart_ifx_recv,
	};
	/* execute once when change CAM default baudrate */
#if CAM_CHANGE_BAUDRATE
	sc03mpd_set_baud(&ifx, SC03MPD_BDR_115200, 1);	// default: SC03MPD_BDR_38400
	printf ("[SC03MPD] Change default baudrate done.");
	while (1)
	{
		osDelay(1);
	}
#endif
	/* camera init */
	SC03MPD_ASSERT(imc_sc03mpd_init(&ifx), "[SC03MPD] FAILED! CAM init", EXIT)

	/* image capture and download when GPIO pin 1 UP */
	/* Let the AI task to setup the inferece interpreter */
	osSemaphoreRelease(cam);

	while (1)
	{


		/* Wait for the inference task to finish setting up the interpreter and return the pointer for storing image, scale for scaling the image and zero_point for normalization */
		if(ret_val == 1) osSemaphoreWait(empty, osWaitForever);
		printf("\n**************************\r\n\n");

		SC03MPD_ASSERT(imc_sc03mpd_capture(&ifx), "[SC03MPD] FAILED!", ERROR)


		ret_val = decodeMyImage((uint8_t*)IMG_RAM_ADDR, ilen, 0,0,0,NULL, 1);
		total_captures += 1;

		if(ret_val == 1){
			printf("[DEC] OK Decode\r\n");
			osSemaphoreRelease(full);
			goto DONE;
		}
		else{
			printf("\033[1;31m");
			printf("[DEC] Failed Decode\r\n");
			printf("\033[0m");
			goto ERROR;
		}

DONE:
	continue;



ERROR:
		/*
		 * 2022. 7. 20. failure --> UART stuck continuously; works only after HW reset
		 * 2022. 8. 25. add USART3 init. and reset fn.; download or capture failure --> normal
		 * 2022. 8. 25. after SC03MPD power off/on, works well after few failures
		 */
		//Coming from downloading directly
		ret_val = 0;
		failed_captures += 1;
		printf("\033[1;31m");
		printf("[STATUS] Total Captured: %d and Failed Captured: %d\r\n", total_captures, failed_captures);
		printf("\033[0m");
		osDelay(DELAY_BEFORE_ERR_HANDLING);

		MX_USART3_UART_Init();
		imc_sc03mpd_init(&ifx);
	}


EXIT:
	osDelay(1000);
	osThreadTerminate(NULL);

  /* USER CODE END TaskSnapRunner */
}

/* USER CODE BEGIN Header_taskAIRunner */
/**
* @brief Function implementing the taskAI thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_taskAIRunner */



extern int image_available;
void taskAIRunner(void const * argument)
{


	/* USER CODE BEGIN taskAIRunner */
	/* Infinite loop */
	uint32_t tsStart = 0;

	int kTensorArenaSize = 120000;
	uint8_t tensor_arena[kTensorArenaSize];
	osSemaphoreWait(cam, osWaitForever);

	dst_image = setup(tensor_arena, kTensorArenaSize, &scale, &zero_point);
	osSemaphoreRelease(empty);

	while(1){
		osSemaphoreWait(full, osWaitForever);


		tsStart = HAL_GetTick();
		//preprocess_input();

		printf("[AI] Image Preprocessing Time: %u ticks\r\n", HAL_GetTick() - tsStart);



		tsStart = HAL_GetTick();
		int temp = perform_inference();
		printf("[AI] Inference Time: %u ticks\r\n", HAL_GetTick() - tsStart);

		if(temp == -1){
			goto END;
		}

		int result = print_output();


		printf("[AI] Person Detected: %d \r\n", result);
		printf("\n**************************\r\n\n");


END:
		osSemaphoreRelease(empty);

	}





  /* USER CODE END taskAIRunner */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
int32_t hal_uart_ifx_send(sc03mpd_ifx_t* ifx, uint8_t* buf, uint16_t len)
{
	return (HAL_UART_Transmit((UART_HandleTypeDef*)ifx->context, buf, len, 100) == HAL_OK)? len : -1;
}

int32_t hal_uart_ifx_recv(sc03mpd_ifx_t* ifx, uint8_t* buf, uint16_t len)
{
	return (HAL_UARTEx_ReceiveToIdle((UART_HandleTypeDef*)ifx->context, buf, len, &len, 500) == HAL_OK)? len : -1;
}

static uint32_t _exti_start = 0;
static uint32_t _exti_count = 0;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin != GPIO_PIN_6)
		return;

	if ((HAL_GetTick() - _exti_start) < 500)
		return;

	_exti_start = HAL_GetTick();
	_exti_count++;

	osMessagePut(queueSnapReqHandle, _exti_count, 0);
}
/* USER CODE END Application */
