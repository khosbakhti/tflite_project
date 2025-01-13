/*
 * imc_api.c
 *
 *  Created on: Jul 21, 2022
 *      Author: yoojin.lim (yoojin.lim@etri.re.kr)
 */

#include <stdio.h>

#include "cmsis_os.h"
#include "gpio.h"

#include "ImC/imc_api.h"
#include "sc03mpd/sc03mpd.h"
#include "Imc/decoder.h"

/**
* @brief turn Set of 4 LEDs ON and OFF after msec
* @param argument:
* 			ledSet : indicates LED 0~3
* 				e.g. {1,0,1,0} for LED 0 and LED 2 are ON
* 			length : number of LEDs (ledSet)
* 			msec : ON duration
* @retval None
*/


void turn_on_leds(){
	HAL_GPIO_WritePin(LED0_GPIO, LED0_GPIO_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(LED1_GPIO, LED1_GPIO_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(LED2_GPIO, LED2_GPIO_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(LED3_GPIO, LED3_GPIO_PIN, GPIO_PIN_SET);
}

void turn_off_leds(){
	HAL_GPIO_WritePin(LED0_GPIO, LED0_GPIO_PIN, GPIO_PIN_RESET);	// LED0 OFF
	HAL_GPIO_WritePin(LED1_GPIO, LED1_GPIO_PIN, GPIO_PIN_RESET);	// LED1 OFF
	HAL_GPIO_WritePin(LED2_GPIO, LED2_GPIO_PIN, GPIO_PIN_RESET);	// LED2 OFF
	HAL_GPIO_WritePin(LED3_GPIO, LED3_GPIO_PIN, GPIO_PIN_RESET);
}


void imc_led_on (uint8_t ledSet[], uint8_t length, uint32_t msec)
{
	HAL_GPIO_WritePin(LED0_GPIO, LED0_GPIO_PIN, GPIO_PIN_RESET);	// LED0 OFF
	HAL_GPIO_WritePin(LED1_GPIO, LED1_GPIO_PIN, GPIO_PIN_RESET);	// LED1 OFF
	HAL_GPIO_WritePin(LED2_GPIO, LED2_GPIO_PIN, GPIO_PIN_RESET);	// LED2 OFF
	HAL_GPIO_WritePin(LED3_GPIO, LED3_GPIO_PIN, GPIO_PIN_RESET);	// LED3 OFF

	for ( uint8_t i = 0; i < length ; i++ ) {
		if ( ledSet[i] )
		{
			switch (i) {	// LED ON
			  case 0: HAL_GPIO_WritePin(LED0_GPIO, LED0_GPIO_PIN, GPIO_PIN_SET); break;
			  case 1: HAL_GPIO_WritePin(LED1_GPIO, LED1_GPIO_PIN, GPIO_PIN_SET); break;
			  case 2: HAL_GPIO_WritePin(LED2_GPIO, LED2_GPIO_PIN, GPIO_PIN_SET); break;
			  case 3: HAL_GPIO_WritePin(LED3_GPIO, LED3_GPIO_PIN, GPIO_PIN_SET); break;
			}
		}
	}
	osDelay(msec);

	HAL_GPIO_WritePin(LED0_GPIO, LED0_GPIO_PIN, GPIO_PIN_RESET);	// LED0 OFF
	HAL_GPIO_WritePin(LED1_GPIO, LED1_GPIO_PIN, GPIO_PIN_RESET);	// LED1 OFF
	HAL_GPIO_WritePin(LED2_GPIO, LED2_GPIO_PIN, GPIO_PIN_RESET);	// LED2 OFF
	HAL_GPIO_WritePin(LED3_GPIO, LED3_GPIO_PIN, GPIO_PIN_RESET);	// LED3 OFF
}

/**
* @brief turn Set of 4 LEDs ON and OFF after msec
* @param argument:
* 			ledSet : indicates LED 0~3
* 				e.g. {1,0,1,0} for LED 0 and LED 2 are ON
* 			length : number of LEDs (ledSet)
* 			msec : blink period
* @retval None
*/
void imc_led_blink (uint8_t ledSet[], uint8_t length, uint32_t msec)
{
	imc_led_on (ledSet, length, msec);
	osDelay(msec);
}


int32_t imc_sc03mpd_init (sc03mpd_ifx_t* ifx)
{
	/* initial operation process :
	 * 1) power up
	 * 2) delay 2.5s
	 * 3) reset command
	 * 4) set image resolution command (currently 160x120)
	 * 5) set image compressibility command
	 * 6) reset command
	 *    Note: after setting the desired image size, you need to reset the camera first,
	 *    and then the new setting would be enabled.
	 * OPTION for SKKU) manually step color, select black-white
	 */
	printf("[SC03MPD] waiting for CAM boot-up ...\r\n");
#if !CAM_FAST_READY
	osDelay (DELAY_AFTER_POWERUP);
#endif
	printf("[SC03MPD] init CAM ...\r\n");

	SC03MPD_ASSERT(sc03mpd_reset(ifx), "[SC03MPD] failed to reset", INIT_ERROR)
	SC03MPD_ASSERT(sc03mpd_set_ires(ifx, IMAGE_RESOLUTION),	"[SC03MPD] failed to set resolution", INIT_ERROR)
	SC03MPD_ASSERT(sc03mpd_set_icmp(ifx, 0x00), "[SC03MPD] failed to set compression rate", INIT_ERROR)
	SC03MPD_ASSERT(sc03mpd_reset(ifx), "[SC03MPD] failed to reset for image setting", INIT_ERROR)
#if CAM_BLACK_WHITE
	// after reset color mode setting is initialized
	SC03MPD_ASSERT(sc03mpd_set_clr(ifx, SC03MPD_CLR_BW), "[SC03MPD] failed to set black-white", INIT_ERROR)
#endif

	printf("[SC03MPD] init CAM done.\r\n");

	return CAM_STS_ENON;

INIT_ERROR:
	return CAM_STS_EINI;
}

uint16_t ilen = 0;


/* 2022. 8. 25. fix logical seq. error under V0706 protocol; stop -> read length -> read data -> resume */
int32_t imc_sc03mpd_capture (sc03mpd_ifx_t* ifx) {
	printf("[SC03MPD] start capture ....\r\n");

	/* CAPTURE */
	SC03MPD_ASSERT(sc03mpd_capture(ifx), "[SC03MPD] failed to capture", CAPTURE_ERROR)
	osDelay (DELAY_AFTER_CAPTURE);

	/* GET length */
	ilen = 0;
	SC03MPD_ASSERT(sc03mpd_get_ilen(ifx, &ilen), "[SC03MPD] failed to get length", CAPTURE_ERROR)
	printf("[SC03MPD] capture done. (length = %d, %04X)\r\n", ilen, ilen);
	osDelay (DELAY_AFTER_LENGTH);

	/* READ image data */
	printf("[SC03MPD] downloading to 0x%08X.\r\n", IMG_RAM_ADDR);

	uint8_t* imem = (uint8_t*)IMG_RAM_ADDR;
	uint16_t addr = 0;
	uint16_t nreq = 0;
	uint16_t rest = ilen;

	uint32_t tsStart = 0;
	uint32_t tsEnd = 0;

	tsStart = HAL_GetTick();
	while (rest > 0)
	{
	  nreq = (rest > IMG_BLK_SIZE)? IMG_BLK_SIZE : rest;

	  if (sc03mpd_get_idat(ifx, addr, nreq, imem))
	  {
		printf("FAIL: %04X (%d)\r\n", addr, nreq);
		goto CAPTURE_ERROR;
	  }

	  //printf ("#READ: %04X (%d), DATA: %02X\r\n", addr, nreq, *imem);
	  rest -= nreq;
	  addr += nreq;
	  imem += nreq;
	}

	tsEnd = HAL_GetTick();
	printf("[SC03MPD] downloading done. (%lu ticks)\r\n", tsEnd-tsStart);

#if CAM_IMAGE_FIRST_TWO_BYTES
	/* Note: JPEG IMAGE DATA must be FF D8 in first and FF D9 in end.
	 *       2022. 7. 20. ETRI can not assure that the EOI is FF D9.
	 * */

	printf("[SC03MPD] image data (first 2 bytes): ");
	uint8_t* aimg = (uint8_t*)IMG_RAM_ADDR;
	for ( uint16_t i = 0; i < 2; i++, aimg++ )
		printf("%02X ", *aimg);

	printf("\r\n");
	printf("\r\n");
#endif

	/* STOP CAPTURE = RESUME */
	SC03MPD_ASSERT(sc03mpd_stop(ifx), "[SC03MPD] failed to stop", CAPTURE_ERROR)

	printf("[SC03MPD] stop capture done.\r\n");
	printf("%d\r\n", ilen);

	// RESIZE IMAGE FROM (160x120) to (28x28x1)
	// IMAGE LEN = 3432

	//converting the image














	return CAM_STS_ENON;

	CAPTURE_ERROR:
	return CAM_STS_ECAP;
}

int32_t imc_sc03mpd_reset (sc03mpd_ifx_t* ifx)
{
	SC03MPD_ASSERT(sc03mpd_reset(ifx), "[SC03MPD] failed to reset", RESET_ERROR)
	printf("[SC03MPD] reset done.\r\n");

	return CAM_STS_ENON;

RESET_ERROR:
	return CAM_STS_EINI;
}


void imc_sbc_power_off (uint32_t msec)
{
	osDelay(msec);

	HAL_GPIO_WritePin(SBC_POWER_GPIO, SBC_POWER_GPIO_PIN, POWER_OFF);
}

void imc_cam_power_off (uint32_t msec)
{
	osDelay(msec);

	HAL_GPIO_WritePin(CAM_POWER_GPIO, CAM_POWER_GPIO_PIN, POWER_OFF);
}

void imc_cam_power_on (uint32_t msec)
{
	osDelay(msec);

	HAL_GPIO_WritePin(CAM_POWER_GPIO, CAM_POWER_GPIO_PIN, POWER_ON);
}

/*
 * energy level : 0~7 with 3bits of GPIO pins
 * ignore level update between reading each pin
 *
 */
uint8_t imc_get_energy_level ()
{
	return (HAL_GPIO_ReadPin(ENERGY_LV2_GPIO, ENERGY_LV2_GPIO_PIN) << 2)
			+ (HAL_GPIO_ReadPin(ENERGY_LV1_GPIO, ENERGY_LV1_GPIO_PIN) << 1)
			+ (HAL_GPIO_ReadPin(ENERGY_LV0_GPIO, ENERGY_LV0_GPIO_PIN));
}
