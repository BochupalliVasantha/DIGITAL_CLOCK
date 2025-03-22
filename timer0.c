/*
 * File:   timer0.c
 * Author: WINDOWS
 *
 * Created on 31 January, 2025, 11:05 PM
 */
#include <xc.h>
#include "timer0.h"

void init_timer0(void)
{

    /*Setting 8 bit timer register*/
	T08BIT = 1;

    /* Selecting internal clock source */
	T0CS = 0;

    /* Enabling timer0*/
	TMR0ON = 1;

    /* disabling prescaler*/
	PSA = 1;

    /* initially start the timer value from 6 */
	TMR0 = 6;

	/* Clearing timer0 overflow interrupt flag bit */
	TMR0IF = 0;

	/* Enabling timer0 overflow interrupt */
	TMR0IE = 1;
}

