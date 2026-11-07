#include <REG51.H>

/* ============================================================
   SYSTEM MODULE - Header
   ============================================================ */

#define WARNING_TEMP 70
#define CRITICAL_TEMP 85
#define RELAY_ON 1
#define RELAY_OFF 0

sbit RELAY = P2^3;      // Green LED (Machine Running)
sbit LED = P2^4;        // Red LED (Warning)
sbit BUZZER = P2^5;     // Buzzer

unsigned int temperature = 0;
unsigned char system_state = 0;
unsigned int blink_timer = 0;
unsigned char current_mode = 0;

void safe_operation(void);
void warning_operation(void);
void critical_operation(void);
void update_lcd(void);
void show_welcome(void);

/* ============================================================
   SYSTEM MODULE - Implementation
   ============================================================ */

// External references - LCD functions
extern void lcd_init(void);
extern void lcd_clear(void);
extern void lcd_cmd(unsigned char cmd);
extern void lcd_data(unsigned char dat);
extern void lcd_string(char *str);
extern void display_temperature(unsigned int temp);
extern void display_number(unsigned char num);

// External references - RTC functions
extern void rtc_read_time(unsigned char *hours, unsigned char *minutes, unsigned char *seconds);
extern void rtc_read_date(unsigned char *day, unsigned char *month, unsigned char *year);

void delay_sys(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

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

void show_welcome(void)
{
    unsigned char hours, minutes, seconds;
    unsigned char day, month, year;
    
    lcd_clear();
    lcd_cmd(0x80);
    lcd_string("Overheat System");
    lcd_cmd(0xC0);
    lcd_string("v5.0 Ready...");
    delay_sys(1500);
    lcd_clear();
    
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
    delay_sys(2000);
    lcd_clear();
    
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
    delay_sys(1500);
    lcd_clear();
}