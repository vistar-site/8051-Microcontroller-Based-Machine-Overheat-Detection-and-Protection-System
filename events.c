#include <REG51.H>

/* ============================================================
   EVENTS MODULE - Header
   ============================================================ */

sbit BTN_VIEW = P3^3;

unsigned char event_count = 0;
unsigned char display_events_active = 0;

void log_event(unsigned int temp, unsigned char state);
void display_events(void);

/* ============================================================
   EVENTS MODULE - Implementation
   ============================================================ */

// External references - LCD functions
extern void lcd_clear(void);
extern void lcd_cmd(unsigned char cmd);
extern void lcd_string(char *str);
extern void lcd_data(unsigned char dat);
extern void display_temperature(unsigned int temp);
extern void display_number(unsigned char num);

// External references - RTC functions
extern void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds);
extern void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year);

// External references - EEPROM functions
extern unsigned char eeprom_read(unsigned int addr);
extern void eeprom_write(unsigned int addr, unsigned char dat);

void delay_evt(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

void log_event(unsigned int temp, unsigned char state)
{
    unsigned int addr;
    unsigned char hours, minutes, seconds;
    unsigned char day, month, year;
    unsigned char count;
    
    rtc_read_time(&hours, &minutes, &seconds);
    rtc_read_date(&day, &month, &year);
    
    count = eeprom_read(0x0000);
    event_count = count;
    
    addr = 0x0010 + (count * 8);
    
    if(count >= 62)
    {
        count = 0;
        addr = 0x0010;
    }
    
    eeprom_write(addr, (unsigned char)(temp & 0xFF));
    eeprom_write(addr + 1, (unsigned char)(temp >> 8));
    eeprom_write(addr + 2, state);
    eeprom_write(addr + 3, seconds);
    eeprom_write(addr + 4, minutes);
    eeprom_write(addr + 5, hours);
    eeprom_write(addr + 6, day);
    eeprom_write(addr + 7, month);
    
    count++;
    eeprom_write(0x0000, count);
    event_count = count;
}

void display_events(void)
{
    unsigned char count, state, s, m, h, d, mo;
    unsigned int addr, temp;
    unsigned char idx;
    unsigned int timer;
    unsigned char temp_low, temp_high;
    unsigned char yr = 26;
    
    count = eeprom_read(0x0000);
    
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("<<< LOGS MODE >>>");
    lcd_cmd(0xC0);
    lcd_string("Hold to view logs");
    delay_evt(1500);
    
    if(count == 0)
    {
        lcd_clear();
        lcd_cmd(0x80);
        lcd_string("No Events Logged");
        lcd_cmd(0xC0);
        lcd_string("Release to exit");
        
        while(BTN_VIEW == 0)
            delay_evt(10);
        return;
    }
    
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("Total Events: ");
    display_number(count);
    lcd_cmd(0xC0);
    lcd_string("Hold to view logs");
    delay_evt(1500);
    
    if(BTN_VIEW == 1)
        return;
    
    idx = 0;
    display_events_active = 1;
    
    while(display_events_active)
    {
        if(BTN_VIEW == 1)
        {
            display_events_active = 0;
            break;
        }
        
        addr = 0x0010 + ((count - 1 - idx) * 8);
        
        temp_low = eeprom_read(addr);
        temp_high = eeprom_read(addr + 1);
        temp = (temp_high << 8) | temp_low;
        state = eeprom_read(addr + 2);
        s = eeprom_read(addr + 3);
        m = eeprom_read(addr + 4);
        h = eeprom_read(addr + 5);
        d = eeprom_read(addr + 6);
        mo = eeprom_read(addr + 7);
        
        lcd_clear();
        
        lcd_cmd(0x80);
        lcd_string("#");
        display_number(idx + 1);
        lcd_string(": ");
        lcd_string("TEMP:");
        display_temperature(temp);
        lcd_data(223);
        lcd_data('C');
        lcd_string(" ");
        
        if(state == 0) lcd_string("SAFE");
        else if(state == 1) lcd_string("WARN");
        else lcd_string("STOP");
        
        lcd_cmd(0xC0);
        lcd_string("T:");
        display_number(h);
        lcd_data(':');
        display_number(m);
        lcd_string(" D:");
        display_number(d);
        lcd_data('/');
        display_number(mo);
        lcd_data('/');
        lcd_data('2');
        lcd_data('0');
        display_number(yr);
        
        timer = 0;
        while(timer < 3000)
        {
            delay_evt(10);
            timer += 10;
            
            if(BTN_VIEW == 1)
            {
                display_events_active = 0;
                break;
            }
        }
        
        idx++;
        if(idx >= count)
            idx = 0;
    }
}