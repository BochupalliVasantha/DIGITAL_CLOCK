#ifndef EEPROM_H
#define EEPROM_H

#define READ_EEPROM     0xA1
#define WRITE_EEPROM    0xA0

void write_24c02(unsigned char address, unsigned char data);
unsigned char read_24c02(unsigned char address);

#endif

