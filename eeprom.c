#include <xc.h>
#include "eeprom.h"
#include "i2c.h"

//function to write the data into eeprom
void write_24c02(unsigned char address, unsigned char data) 
{
	/* start the communication */
	i2c_start();
    
    /* transmit the slave ID for write operation */
	i2c_write(WRITE_EEPROM);
    
    /* transmit the data(address) */
	i2c_write(address);
    
    /* transmit the data(data) */
	i2c_write(data);
    
    /* stop the communication */
	i2c_stop();
    
    for(unsigned int delay = 3000; delay--; );
}

//function to read the data from eeprom
unsigned char read_24c02(unsigned char address)
{
	unsigned char data;

    /* start the communication */
	i2c_start();
    
    /* transmit the slave ID for write operation */
	i2c_write(WRITE_EEPROM);
    
    /* transmit the data(address) */
	i2c_write(address);
    
    /* to read the data repeat start */
	i2c_rep_start();
    
    /* transmit the slave ID for read operation */
	i2c_write(READ_EEPROM);
    
    /* read the data from slave */
	data = i2c_read();
    
    /* stop the communication */
	i2c_stop();

    /* return the read data */
	return data;
}

