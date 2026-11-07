#include <REG51.H>

/* ============================================================
   BUTTON MODULE - Header
   ============================================================ */

sbit BTN_VIEW = P3^3;

void check_button(void);

/* ============================================================
   BUTTON MODULE - Implementation
   ============================================================ */

// External references
extern void lcd_clear(void);
extern void lcd_cmd(unsigned char cmd);
extern void lcd_string(char *str);
extern void display_events(void);
extern void update_lcd(void);

unsigned char button_was_pressed = 0;
unsigned char current_mode = 0;
unsigned char display_events_active = 0;

void delay_btn(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 1275; j++);
}

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
            
            display_events();
            
            current_mode = 0;
            lcd_clear();
            lcd_cmd(0x80);
            lcd_string("<<< MONITORING >>>");
            lcd_cmd(0xC0);
            lcd_string("Mode");
            delay_btn(1500);
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