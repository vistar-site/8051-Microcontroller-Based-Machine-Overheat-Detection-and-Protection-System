#include <REG51.H>

/* ============================================================
   RTC MODULE - Header (DS1307)
   ============================================================ */

#define RTC_ADDR_WRITE 0xD0
#define RTC_ADDR_READ 0xD1

unsigned char bcd_to_decimal(unsigned char bcd);
void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds);
void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year);

/* ============================================================
   RTC MODULE - Implementation
   ============================================================ */

// External references - I2C functions
extern void i2c_start(void);
extern void i2c_stop(void);
extern unsigned char i2c_write(unsigned char dat);
extern unsigned char i2c_read(unsigned char ack);

unsigned char bcd_to_decimal(unsigned char bcd)
{
    return ((bcd >> 4) * 10) + (bcd & 0x0F);
}

void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds)
{
    i2c_start();
    i2c_write(RTC_ADDR_WRITE);
    i2c_write(0x00);
    i2c_start();
    i2c_write(RTC_ADDR_READ);
    
    *seconds = bcd_to_decimal(i2c_read(1));
    *minutes = bcd_to_decimal(i2c_read(1));
    *hours = bcd_to_decimal(i2c_read(0) & 0x3F);
    
    i2c_stop();
}

void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year)
{
    i2c_start();
    i2c_write(RTC_ADDR_WRITE);
    i2c_write(0x04);
    i2c_start();
    i2c_write(RTC_ADDR_READ);
    
    *day = bcd_to_decimal(i2c_read(1));
    *month = bcd_to_decimal(i2c_read(1));
    *year = bcd_to_decimal(i2c_read(0));
    
    i2c_stop();
}