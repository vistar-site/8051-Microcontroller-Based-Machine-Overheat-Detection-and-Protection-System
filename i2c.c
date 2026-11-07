#include <REG51.H>

/* ============================================================
   I2C MODULE - Header
   ============================================================ */

sbit SDA = P2^6;
sbit SCL = P2^7;

void i2c_start(void);
void i2c_stop(void);
unsigned char i2c_write(unsigned char dat);
unsigned char i2c_read(unsigned char ack);

/* ============================================================
   I2C MODULE - Implementation
   ============================================================ */

void delay_us(unsigned int us)
{
    unsigned int i;
    for(i = 0; i < us; i++);
}

void i2c_start(void)
{
    SDA = 1;
    SCL = 1;
    delay_us(5);
    SDA = 0;
    delay_us(5);
    SCL = 0;
}

void i2c_stop(void)
{
    SDA = 0;
    SCL = 1;
    delay_us(5);
    SDA = 1;
    delay_us(5);
}

unsigned char i2c_write(unsigned char dat)
{
    unsigned char i, ack;
    
    for(i = 0; i < 8; i++)
    {
        SDA = (dat & 0x80) ? 1 : 0;
        dat <<= 1;
        SCL = 1;
        delay_us(5);
        SCL = 0;
        delay_us(5);
    }
    
    SDA = 1;
    SCL = 1;
    delay_us(5);
    ack = SDA;
    SCL = 0;
    
    return ack;
}

unsigned char i2c_read(unsigned char ack)
{
    unsigned char i, dat = 0;
    
    SDA = 1;
    
    for(i = 0; i < 8; i++)
    {
        dat <<= 1;
        SCL = 1;
        delay_us(5);
        if(SDA) dat |= 0x01;
        SCL = 0;
        delay_us(5);
    }
    
    SDA = ack ? 0 : 1;
    SCL = 1;
    delay_us(5);
    SCL = 0;
    SDA = 1;
    
    return dat;
}