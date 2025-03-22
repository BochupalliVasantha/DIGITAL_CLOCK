/*
 * File:   i2c.h
 * Author: WINDOWS
 *
 * Created on 31 January, 2025, 8:12 PM
 */


#ifndef I2C_H
#define I2C_H


void init_i2c(void);//to initialize the congurations for i2c
void i2c_start(void);//to strat the communication
void i2c_rep_start(void);//for repeat and start communication
void i2c_stop(void);//to stop commn
void i2c_write(unsigned char data);
unsigned char i2c_read(void);

#endif
