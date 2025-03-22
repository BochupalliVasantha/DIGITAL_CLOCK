#include <xc.h>
#include "main.h"
#include "clcd.h"
#include "matrix_kepad.h"
#include "i2c.h"
#include "rtc.h"
#include"timer0.h"
#include"eeprom.h"
unsigned char screen_flag;
unsigned char once = 0;
//unsigned char  menu = 0;
unsigned char key = ALL_RELEASED;
void init_config()
{
    screen_flag = DEFAULT_SCREEN;//initializing screen flag to dash board for the first time
    PEIE = 1;
    init_timer0();
    //init_eeprome();
    GIE = 1;
    init_clcd();
    init_matrix_keypad();
    init_i2c();
    init_ds1307();
//    TRISB = 0x00;//setting portb as output port
//    PORTB = 0x00;//initially making RB0 to off position
}
void check_matrix_keypad(void)
{
	unsigned char key,pre_key = 0xFF;
	static unsigned int i;

	key = read_switches(LEVEL_CHANGE);
    if(key != ALL_RELEASED)
    {
        pre_key = key;
    }
	if (pre_key != ALL_RELEASED)
	{
		clcd_print("Key ", LINE2(1));
		clcd_putch('0' + (pre_key / 10), LINE2(5));
		clcd_putch('0' + (pre_key % 10), LINE2(6));
		clcd_print(" Pressed ", LINE2(7));
		//RB0 = !RB0;
		for (i = 50000; i--;);
	}
	//else
	//{
		//clcd_print(" No Key Pressed ", LINE2(0));
	//}
}
void main(void) {
    init_config();//initialization
//    CLEAR_DISP_SCREEN;
//    clcd_print("started...",LINE1(0));
//    for (int i = 50000; i--;);
//    unsigned char addr;
//    for (addr = 0x00; addr < 0xFF; addr++) 
//    {
//        write_24c02(addr,0x00); 
//        for (int i = 50000; i--;);// Writing 0x00 to clear
//        //__delay_ms(5);  // Small delay for write operation
//    }
//    CLEAR_DISP_SCREEN;
//    clcd_print("ended...",LINE1(0));
//    for (int i = 5000000; i--;);
    while(1)//super loop
    {
        key = read_switches(STATE_CHANGE);//to detect the key press
         //check_matrix_keypad();
      if(screen_flag == DEFAULT_SCREEN)//if screen_flag equals to dashboard enter into the dashboard function
      {
          default_screen(key);
      }
      else if(screen_flag == MAIN_MENU)//if screen flag equal to main_menu enter into main_menu function
      {
         main_menu();
      }
      else if(screen_flag == SET_TIME_DATE)//if screen flag equal to main_menu enter into main_menu function
      {
          set_time_date();
      }
      else if(screen_flag == SET_VIEW_EVENTS)//if screen flag equal to main_menu enter into main_menu function
      {
         set_view_events();
      }
     
        
      else if(screen_flag == SET_TIME)//if screen flag equal to view_log flag enter into view_log function
      {
          set_time();
      }
      else if(screen_flag == SET_DATE)//if screen flag equal to download_log flag enter into download_log function
      {
          set_date();
      }
     
      else if(screen_flag == SET_EVENT)//if screen flag equal to set_time_log flag enter into set_time_log function
      {
          set_events();
      }
          else if(screen_flag == VIEW_EVENTS)//if screen flag equal to clear_log flag enter into clear_log function
      {
          view_events();
      }
        
    }
    
}
