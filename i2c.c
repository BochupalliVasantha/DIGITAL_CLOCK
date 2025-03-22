/*
 * File:   i2c.c
 * Author: WINDOWS
 *
 * Created on 31 January, 2025, 8:59 PM
 */


#include <xc.h>
#include "i2c.h"

void init_i2c(void)
{
	/* Set SCL and SDA pins as inputs */
	TRISC3 = 1;
	TRISC4 = 1;
	/* Set I2C master mode */
	SSPCON1 = 0x28;

	SSPADD = 0x31;
	/* Use I2C levels, worked also with '0' */
	CKE = 0;
	/* Disable slew rate control  worked also with '0' */
	SMP = 1;
	/* Clear SSPIF interrupt flag */
	SSPIF = 0;
	/* Clear bus collision flag */
	BCLIF = 0;
}

void i2c_idle(void)//to check intruction completed or not
{
	while (!SSPIF);
    /*
     if sspif is 0 instruction is not completed
     if sspif is 1 instruction is completed*/
	SSPIF = 0;//clear the flag for next time checking
}

void i2c_ack(void)//if we are usin ack checking whether received or not
{
	if (ACKSTAT)
	{
		/* Do debug print here if required */
	}
}

void i2c_start(void)//to strt communication
{
	SEN = 1;
	i2c_idle();
}

void i2c_stop(void)//to stop
{
	PEN = 1;
	i2c_idle();
}

void i2c_rep_start(void)//to repeat and start
{
	RSEN = 1;
	i2c_idle();
}

void i2c_write(unsigned char data)//for data transimission
{
	SSPBUF = data;
	i2c_idle();
}

void i2c_rx_mode(void)//set for receiving mode
{
	RCEN = 1;
	i2c_idle();
}

void i2c_no_ack(void)//we have to indicate i2c that we are not sending ack
{
	ACKDT = 1;
	ACKEN = 1;
}

unsigned char i2c_read(void)
{
	i2c_rx_mode();
	i2c_no_ack();

	return SSPBUF;
}
