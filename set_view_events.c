/*
 * File:   set_view_events.c
 * Author: WINDOWS
 *
 * Created on 1 February, 2025, 12:37 AM
 */

#include <xc.h>
#include"clcd.h"
#include"rtc.h"
#include"i2c.h"
#include"matrix_kepad.h"
#include"main.h"
extern unsigned char screen_flag;
extern unsigned char key;
int menu1 = 0;
void set_view_events(void)
{
    if(key == MK_SW2)
  {
     menu1 = 0;
  }
  else if(key == MK_SW1)
  {
      menu1 = 1;
  }
  if(!menu1)
  {
      clcd_print("                ",LINE1(0));
      clcd_print("                ",LINE2(0));
      clcd_print("*",LINE1(0));
      clcd_print("SET EVENT",LINE1(2));
      clcd_print("VIEW EVENT",LINE2(2));
  }
  else if(menu1)
  {
      clcd_print("                ",LINE1(0));
      clcd_print("                ",LINE2(0));
      clcd_print("SET EVENT",LINE1(2));
      clcd_print("*",LINE2(0));
      clcd_print("VIEW EVEN",LINE2(2));
  }
  if(key == MK_SW4)
  {
      if(!menu1)
      {
          screen_flag = SET_EVENT;
      }
      else
          screen_flag = VIEW_EVENTS;
  }
  if(key == MK_SW5)
  {
      screen_flag = MAIN_MENU;
  }
}
//#include <xc.h>
//#include "clcd.h"
//#include "rtc.h"
//#include "i2c.h"
//#include "matrix_kepad.h"
//#include "main.h"
//
//extern unsigned char screen_flag;
//extern unsigned char key;
//extern Event events[MAX_EVENTS];
//extern unsigned char event_count;
//
//int event_display_index = 0;
//
//void set_view_events(void) {
//    if (key == MK_SW2) {
//        // Move to the next event
//        if (event_display_index < event_count - 1) {
//            event_display_index++;
//        }
//    } else if (key == MK_SW1) {
//        // Move to the previous event
//        if (event_display_index > 0) {
//            event_display_index--;
//        }
//    }
//
//    if (key == MK_SW4) {
//        if (event_count > 0) {
//            // Show the event at the current index
//            clcd_print(events[event_display_index].event_name, LINE1(0));
//            clcd_print("Time: ", LINE2(0));
//            clcd_print(events[event_display_index].hour, LINE2(6));
//            clcd_print(":", LINE2(8));
//            clcd_print(events[event_display_index].min, LINE2(9));
//            clcd_print(":", LINE2(11));
//            clcd_print(events[event_display_index].sec, LINE2(12));
//        } else {
//            clcd_print("No events to show", LINE2(0));
//        }
//    }
//
//    if (key == MK_SW5) {
//        screen_flag = MAIN_MENU;  // Go back to the main menu
//    }
//}
