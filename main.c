#include <REG51.H>
#include <string.h>

/* ============================================================
   PIN DEFINITIONS
   ============================================================ */

#define LCD P1

sbit RS = P3^0;
sbit RW = P3^1;
sbit EN = P3^2;
sbit ADC_RD = P2^0;
sbit ADC_WR = P2^1;
sbit INTR = P2^2;
sbit RELAY = P2^3;      // Green LED (Machine Running)
sbit LED = P2^4;        // Red LED (Warning)
sbit BUZZER = P2^5;     // Buzzer
sbit SDA = P2^6;
sbit SCL = P2^7;
sbit BTN_VIEW = P3^3;

/* ============================================================
   CONSTANTS
   ============================================================ */

#define WARNING_TEMP 70
#define CRITICAL_TEMP 85
#define RELAY_ON 1
#define RELAY_OFF 0

#define EEPROM_ADDR_WRITE 0xA0
#define EEPROM_ADDR_READ 0xA1
#define RTC_ADDR_WRITE 0xD0
#define RTC_ADDR_READ 0xD1

/* ============================================================
   GLOBAL VARIABLES
   ============================================================ */

unsigned int temperature = 0;
unsigned char system_state = 0;
unsigned int blink_timer = 0;
unsigned char event_count = 0;
unsigned char current_mode = 0;
unsigned char button_was_pressed = 0;
unsigned char display_events_active = 0;

/* ============================================================
   DELAY FUNCTIONS
   ============================================================ */

void delay(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

void delay_us(unsigned int us)
{
    unsigned int i;
    for(i = 0; i < us; i++);
}

/* ============================================================
   LCD FUNCTIONS
   ============================================================ */

void lcd_cmd(unsigned char cmd)
{
    LCD = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    delay(1);
    EN = 0;
}

void lcd_data(unsigned char dat)
{
    LCD = dat;
    RS = 1;
    RW = 0;
    EN = 1;
    delay(1);
    EN = 0;
}

void lcd_string(char *str)
{
    while(*str)
        lcd_data(*str++);
}

void lcd_init(void)
{
    lcd_cmd(0x38);
    lcd_cmd(0x0C);
    lcd_cmd(0x06);
    lcd_cmd(0x01);
    delay(10);
}

void lcd_clear(void)
{
    lcd_cmd(0x01);
    delay(2);
}

void display_temperature(unsigned int temp)
{
    if(temp / 100 == 0)
        lcd_data(' ');
    else
        lcd_data((temp / 100) + '0');
    lcd_data(((temp / 10) % 10) + '0');
    lcd_data((temp % 10) + '0');
}

void display_number(unsigned char num)
{
    lcd_data((num / 10) + '0');
    lcd_data((num % 10) + '0');
}

/* ============================================================
   ADC FUNCTIONS
   ============================================================ */

unsigned char ADC_Read(void)
{
    unsigned char adc_value;
    unsigned int timeout = 0;

    P0 = 0xFF;
    ADC_WR = 0;
    delay(1);
    ADC_WR = 1;

    while(INTR == 1 && timeout < 10000)
        timeout++;

    ADC_RD = 0;
    delay(1);
    adc_value = P0;
    ADC_RD = 1;

    return adc_value;
}

/* ============================================================
   I2C FUNCTIONS
   ============================================================ */

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

/* ============================================================
   EEPROM FUNCTIONS (24C04)
   ============================================================ */

void eeprom_write(unsigned int addr, unsigned char dat)
{
    unsigned char error;
    unsigned char retry = 0;
    
    do {
        i2c_start();
        error = i2c_write(EEPROM_ADDR_WRITE);
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr >> 8));
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr & 0xFF));
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        error = i2c_write(dat);
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        i2c_stop();
        delay(5);
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
            delay(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr >> 8));
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        error = i2c_write((unsigned char)(addr & 0xFF));
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        i2c_start();
        error = i2c_write(EEPROM_ADDR_READ);
        if(error) {
            i2c_stop();
            delay(1);
            retry++;
            continue;
        }
        
        dat = i2c_read(0);
        i2c_stop();
        break;
        
    } while(retry < 3);
    
    return dat;
}

/* ============================================================
   RTC FUNCTIONS (DS1307)
   ============================================================ */

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

/* ============================================================
   UPDATE LCD - MONITORING MODE
   ============================================================ */

void update_lcd(void)
{
    if(current_mode == 0)
    {
        lcd_cmd(0x80);
        lcd_string("TEMP: ");
        display_temperature(temperature);
        lcd_data(223);
        lcd_data('C');
        lcd_string("   ");
        
        lcd_cmd(0xC0);
        if(system_state == 0)
            lcd_string("STATUS: SAFE     ");
        else if(system_state == 1)
            lcd_string("STATUS: WARNING  ");
        else
            lcd_string("STATUS: SHUTDOWN ");
    }
}

/* ============================================================
   EVENT LOGGING FUNCTIONS
   ============================================================ */

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

/* ============================================================
   DISPLAY EVENTS FUNCTION - WITH COUNT WINDOW
   ============================================================ */

void display_events(void)
{
    unsigned char count, state, s, m, h, d, mo;
    unsigned int addr, temp;
    unsigned char idx;
    unsigned int timer;
    unsigned char temp_low, temp_high;
    unsigned char yr = 26;  // Default year
    
    count = eeprom_read(0x0000);
    
    // Show LOGS MODE message
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("<<< LOGS MODE >>>");
    lcd_cmd(0xC0);
    lcd_string("Hold to view logs");
    delay(1500);
    
    if(count == 0)
    {
        lcd_clear();
        lcd_cmd(0x80);
        lcd_string("No Events Logged");
        lcd_cmd(0xC0);
        lcd_string("Release to exit");
        
        while(BTN_VIEW == 0)
            delay(10);
        return;
    }
    
    // Show Event Count Window
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("Total Events: ");
    display_number(count);
    lcd_cmd(0xC0);
    lcd_string("Hold to view logs");
    delay(1500);
    
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
        
        // Line 1: Event # and Temperature
        lcd_cmd(0x80);
        lcd_string("#");
        display_number(idx + 1);
        lcd_string(": ");
        lcd_string("TEMP:");
        display_temperature(temp);
        lcd_data(223);
        lcd_data('C');
        lcd_string(" ");
        
        // Show status abbreviation
        if(state == 0) lcd_string("SAFE");
        else if(state == 1) lcd_string("WARN");
        else lcd_string("STOP");
        
        // Line 2: Time and Date
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
        
        // 3 second delay for each log
        timer = 0;
        while(timer < 3000)
        {
            delay(10);
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

/* ============================================================
   BUTTON CHECK FUNCTION
   ============================================================ */

void check_button(void)
{
    static unsigned char last_state = 1;
    static unsigned int hold_counter = 0;
    unsigned char current_state;
    
    current_state = BTN_VIEW;
    
    if(current_state == 0)
    {
        if(last_state == 1)
        {
            hold_counter = 0;
            button_was_pressed = 1;
        }
        
        hold_counter++;
        
        if(hold_counter >= 30 && current_mode == 0)
        {
            current_mode = 1;
            
            // Enter LOGS MODE - Display count then logs
            display_events();
            
            // Exit LOGS MODE - Show MONITORING MODE message
            current_mode = 0;
            lcd_clear();
            lcd_cmd(0x80);
            lcd_string("<<< MONITORING >>>");
            lcd_cmd(0xC0);
            lcd_string("Mode");
            delay(1500);
            lcd_clear();
            update_lcd();
        }
    }
    else
    {
        if(button_was_pressed == 1)
        {
            button_was_pressed = 0;
            display_events_active = 0;
        }
        hold_counter = 0;
    }
    
    last_state = current_state;
}

/* ============================================================
   SHOW WELCOME MESSAGE (NO LAST EVENT)
   ============================================================ */

void show_welcome(void)
{
    unsigned char hours, minutes, seconds;
    unsigned char day, month, year;
    
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("Overheat System");
    lcd_cmd(0xC0);
    lcd_string("v5.0 Ready...");
    delay(1500);
    lcd_clear();
    
    // Show current time and date
    rtc_read_time(&hours, &minutes, &seconds);
    rtc_read_date(&day, &month, &year);
    
    lcd_cmd(0x80);
    lcd_string("Time: ");
    display_number(hours);
    lcd_data(':');
    display_number(minutes);
    lcd_data(':');
    display_number(seconds);
    
    lcd_cmd(0xC0);
    lcd_string("Date: ");
    display_number(day);
    lcd_data('/');
    display_number(month);
    lcd_data('/');
    lcd_data('2');
    lcd_data('0');
    display_number(year);
    delay(2000);
    lcd_clear();
    
    // Show threshold values (NO LAST EVENT)
    lcd_cmd(0x80);
    lcd_string("W:");
    display_temperature(WARNING_TEMP);
    lcd_data(223);
    lcd_data('C');
    lcd_string(" C:");
    display_temperature(CRITICAL_TEMP);
    lcd_data(223);
    lcd_data('C');
    lcd_cmd(0xC0);
    lcd_string("Hold VIEW for logs");
    delay(1500);
    lcd_clear();
}

/* ============================================================
   OPERATION FUNCTIONS
   ============================================================ */

void safe_operation(void)
{
    system_state = 0;
    LED = 0;
    BUZZER = 0;
    RELAY = RELAY_ON;
}

void warning_operation(void)
{
    system_state = 1;
    RELAY = RELAY_ON;
    
    blink_timer++;
    if(blink_timer % 10 < 5)
    {
        LED = 1;
        BUZZER = 1;
    }
    else
    {
        LED = 0;
        BUZZER = 0;
    }
}

void critical_operation(void)
{
    system_state = 2;
    RELAY = RELAY_OFF;
    
    blink_timer++;
    if(blink_timer % 4 < 2)
    {
        LED = 1;
        BUZZER = 1;
    }
    else
    {
        LED = 0;
        BUZZER = 0;
    }
}

/* ============================================================
   MAIN FUNCTION
   ============================================================ */

void main(void)
{
    unsigned char adc;
    unsigned int temp;
    unsigned char prev_state = 2;
    unsigned int loop_counter = 0;
    
    RELAY = RELAY_ON;
    LED = 0;
    BUZZER = 0;
    
    lcd_init();
    
    // Show welcome message (NO LAST EVENT)
    show_welcome();
    
    current_mode = 0;
    
    while(1)
    {
        check_button();
        
        if(current_mode == 1)
            continue;
        
        adc = ADC_Read();
        temp = ((unsigned int)adc * 500) / 255;
        temperature = temp;
        
        loop_counter++;
        if(loop_counter >= 5)
        {
            update_lcd();
            loop_counter = 0;
        }
        
        if(temp < WARNING_TEMP)
        {
            if(prev_state != 0)
            {
                prev_state = 0;
                safe_operation();
                update_lcd();
            }
            else
            {
                safe_operation();
            }
        }
        else if(temp < CRITICAL_TEMP)
        {
            if(prev_state != 1)
            {
                prev_state = 1;
                warning_operation();
                update_lcd();
            }
            else
            {
                warning_operation();
            }
        }
        else
        {
            if(prev_state != 2)
            {
                prev_state = 2;
                critical_operation();
                update_lcd();
                
                log_event(temp, 2);
                
                lcd_clear();
                lcd_cmd(0x80);
                lcd_string("EVENT LOGGED!");
                lcd_cmd(0xC0);
                lcd_string("Temp: ");
                display_temperature(temp);
                lcd_data(223);
                lcd_data('C');
                lcd_string(" SHUTDOWN");
                delay(1000);
                update_lcd();
            }
            else
            {
                critical_operation();
            }
        }
        
        delay(5);
    }
}