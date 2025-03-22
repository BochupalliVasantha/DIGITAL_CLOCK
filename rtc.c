/*
 * File:   rtc.c
 * Author: WINDOWS
 *
 * Created on 31 January, 2025, 9:00 PM
 */


#include <xc.h>
#include "i2c.h"
#include "rtc.h"
#include "i2c.h"
/* 
 * DS1307 Slave address
 * D0  -  Write Mode
 * D1  -  Read Mode
 */

//unsigned char time[9];

void init_ds1307(void)
{
	unsigned char dummy;

	/* Setting the CH bit of the RTC to Stop the Clock */
	dummy = read_ds1307(SEC_ADDR);          // read the 8-bit of data from seconds register
	write_ds1307(SEC_ADDR, dummy | 0x80);   //write the 8-bit data to disable the oscillator

	/* Setting 24 Hours Format */
	dummy = read_ds1307(HOUR_ADDR);
	write_ds1307(HOUR_ADDR, dummy & 0xAF); 

	/* 
	 * Control Register of DS1307
	 * Bit 7 - OUT = 1
	 * Bit 6 - 0
	 * Bit 5 - 0
	 * Bit 4 - SQWE = 1
	 * Bit 3 - 0
	 * Bit 2 - 0
	 * Bit 1 - RS1  = 1
	 * Bit 0 - RS0  = 1
	 * 
	 * Setting RS0 and RS1 as 11 to achieve SQW out at 32.768 KHz
	 */ 
	write_ds1307(CNTL_ADDR, 0x93); 

	/* Clearing the CH bit of the RTC to Start the Clock */
	dummy = read_ds1307(SEC_ADDR);
	write_ds1307(SEC_ADDR, dummy & 0x7F); 

}

void write_ds1307(unsigned char address, unsigned char data)
{
    /* start the communication */
	i2c_start();
    
    /* transmit the slave ID for write operation */
	i2c_write(SLAVE_WRITE);
    
    /* transmit the data(address) */
	i2c_write(address);
    
    /* transmit the data(data) */
	i2c_write(data);
    
    /* stop the communication */
	i2c_stop();
}

unsigned char read_ds1307(unsigned char address)
{
	unsigned char data;

    /* start the communication */
	i2c_start();
    
    /* transmit the slave ID for write operation */
	i2c_write(SLAVE_WRITE);
    
    /* transmit the data(address) */
	i2c_write(address);
    
    /* to read the data repeat start */
	i2c_rep_start();
    
    /* transmit the slave ID for read operation */
	i2c_write(SLAVE_READ);
    
    /* read the data from slave */
	data = i2c_read();
    
    /* stop the communication */
	i2c_stop();

    /* return the read data */
	return data;
}
