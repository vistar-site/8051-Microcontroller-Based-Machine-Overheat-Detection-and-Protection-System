#include <REG51.H>

/* ============================================================
   ADC MODULE - Header
   ============================================================ */

sbit ADC_RD = P2^0;
sbit ADC_WR = P2^1;
sbit INTR = P2^2;

unsigned char ADC_Read(void);

/* ============================================================
   ADC MODULE - Implementation
   ============================================================ */

void delay_adc(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

unsigned char ADC_Read(void)
{
    unsigned char adc_value;
    unsigned int timeout = 0;

    P0 = 0xFF;
    ADC_WR = 0;
    delay_adc(1);
    ADC_WR = 1;

    while(INTR == 1 && timeout < 10000)
        timeout++;

    ADC_RD = 0;
    delay_adc(1);
    adc_value = P0;
    ADC_RD = 1;

    return adc_value;
}