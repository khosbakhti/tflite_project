/*
 * imc_api.h
 *
 *  Created on: Jul 21, 2022
 *      Author: yoojin.lim d(yoojin.lim@etri.re.kr)
 */

#ifndef INC_IMC_IMC_API_H_
#define INC_IMC_IMC_API_H_

#include "gpio.h"
#include "sc03mpd/sc03mpd.h"

void turn_off_leds();
void turn_on_leds();


#define NUM_OF_LED				4

#define LED0_GPIO				GPIOB
#define LED1_GPIO				GPIOB
#define LED2_GPIO				GPIOC
#define LED3_GPIO				GPIOC

#define LED0_GPIO_PIN			GPIO_PIN_1
#define LED1_GPIO_PIN			GPIO_PIN_2
#define LED2_GPIO_PIN			GPIO_PIN_6
#define LED3_GPIO_PIN			GPIO_PIN_7

#define SBC_POWER_GPIO			GPIOG
#define CAM_POWER_GPIO			GPIOC

#define SBC_POWER_GPIO_PIN		GPIO_PIN_11
#define CAM_POWER_GPIO_PIN		GPIO_PIN_7

#define POWER_ON				GPIO_PIN_RESET		// LOW
#define POWER_OFF				GPIO_PIN_SET		// HIGH

#define ENERGY_LV0_GPIO			GPIOF
#define ENERGY_LV1_GPIO			GPIOF
#define ENERGY_LV2_GPIO			GPIOF

#define ENERGY_LV0_GPIO_PIN		GPIO_PIN_8
#define ENERGY_LV1_GPIO_PIN		GPIO_PIN_9
#define ENERGY_LV2_GPIO_PIN		GPIO_PIN_10

#define	CAM_SHOT_PIN			GPIO_PIN_6

#define	DELAY_IGNORE_REQ		(500)				// 500ticks
#define DELAY_AFTER_POWERUP		(2500)				// 2.5sec
#define DELAY_AFTER_CAPTURE		(150)				// 0.2sec
#define DELAY_AFTER_LENGTH		(50)				// 0.1sec
#define DELAY_BEFORE_ERR_HANDLING	(100)			// 0.1sec

#define IMAGE_RESOLUTION		SC03MPD_RES_160_120	// _640_480, _320_240 (default), _160_120
#define IMAGE_COMPRESSIBILTY	(0x00)				// 0x00~FF, 0x36 (default)

#define IMG_RAM_ADDR			(0x68200000)
#define IMG_BLK_SIZE			(256)

#define CAM_STS_ENON			( 0)				// Executing right
#define CAM_STS_EINI			(-1)				// Error during init.
#define CAM_STS_ECAP			(-2)				// Error during image capturing
#define CAM_STS_EDWN			(-3)				// Error during image downloading

#define CAM_CHANGE_BAUDRATE			0				// set 1 and execute once when change CAM default baudrate
#define CAM_BAUDRATE_OPERATING		115200
#define CAM_BAUDRATE_CURRENT		38400
#define CAM_IMAGE_FIRST_TWO_BYTES	0
#define CAM_FAST_READY				1
#define CAM_BLACK_WHITE				0

void imc_led_on (uint8_t ledSet[], uint8_t count, uint32_t msec);
void imc_led_blink (uint8_t ledSet[], uint8_t count, uint32_t msec);

int32_t imc_sc03mpd_init(sc03mpd_ifx_t* ifx);
int32_t imc_sc03mpd_capture (sc03mpd_ifx_t* ifx);
int32_t imc_sc03mpd_reset (sc03mpd_ifx_t* ifx);
extern uint16_t ilen;
void imc_sbc_power_off (uint32_t msec);
void imc_cam_power_off (uint32_t msec);
void imc_cam_power_on (uint32_t msec);

uint8_t imc_get_energy_level ();

#endif /* INC_IMC_IMC_API_H_ */
