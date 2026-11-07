#include <REG51.H>

/* ============================================================
   EEPROM MODULE - Header (24C04)
   ============================================================ */

#define EEPROM_ADDR_WRITE 0xA0
#define EEPROM_ADDR_READ 0xA1

void eeprom_write(unsigned int addr, unsigned char dat);
unsigned char eeprom_read(unsigned int addr);

/* ============================================================
   EEPROM MODULE - Implementation
   ============================================================ */

// External references - I2C functions
extern void i2c_start(void);
extern void i2c_stop(void);
extern unsigned char i2c_write(unsigned char dat);
extern unsigned char i2c_read(unsigned char ack);

void delay_eeprom(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

void eeprom_write(unsigned int addr, unsigned char dat)
{
    unsigned char error;
    unsigned char retry = 0;
    
    do {
        i2c_start();
        error = i2c_write(EEPROM_ADDR_WRITE);
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr >> 8));
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr & 0xFF));
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        error = i2c_write(dat);
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        i2c_stop();
        delay_eeprom(5);
        break;
        
    } while(retry < 3);
}

unsigned char eeprom_read(unsigned int addr)
{
    unsigned char dat = 0xFF;
    unsigned char error;
    unsigned char retry = 0;
    
    do {
        i2c_start();
        error = i2c_write(EEPROM_ADDR_WRITE);
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr >> 8));
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr & 0xFF));
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        i2c_start();
        error = i2c_write(EEPROM_ADDR_READ);
        if(error) {
            i2c_stop();
            delay_eeprom(1);
            retry++;
            continue;
        }
        
        dat = i2c_read(0);
        i2c_stop();
        break;
        
    } while(retry < 3);
    
    return dat;
}