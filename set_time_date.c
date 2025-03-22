///*
// * File:   set_time_date.c
// * Author: WINDOWS
// *
// * Created on 1 February, 2025, 12:31 AM
// */
//
//
//#include <xc.h>
//#include"clcd.h"
//#include"rtc.h"
//#include"i2c.h"
//#include"matrix_kepad.h"
//#include"main.h"
//extern unsigned char screen_flag;
//extern unsigned char key;
//int menu = 0;
//void set_time_date(void)
//{
//    if(key == MK_SW2)
//  {
//     menu = 1;
//  }
//  else if(key == MK_SW1)
//  {
//      menu = 0;
//  }
//  if(!menu)
//  {
//      clcd_print("                ",LINE1(0));
//      clcd_print("                ",LINE2(0));
//      clcd_print("*",LINE1(0));
//      clcd_print("SET TIME",LINE1(2));
//      clcd_print("SET DATE",LINE2(2));
//  }
//  else if(menu)
//  {
//      clcd_print("                ",LINE1(0));
//      clcd_print("                ",LINE2(0));
//      clcd_print("SET TIME",LINE1(2));
//      clcd_print("*",LINE2(0));
//      clcd_print("SET DATE",LINE2(2));
//  }
//  if(key == MK_SW4)
//  {
//      if(menu)
//      {
//          screen_flag = SET_DATE;
//      }
//      else
//          screen_flag = SET_TIME;
//  }
//  if(key == MK_SW5)
//  {
//      screen_flag = MAIN_MENU;
//  }
//}
#include <xc.h>
#include "clcd.h"
#include "rtc.h"
#include "i2c.h"
#include "matrix_kepad.h"
#include "main.h"

extern unsigned char screen_flag;
extern unsigned char key;
int menu = 0;

void set_time_date(void) {
    if (key == MK_SW2) {
        menu = 1;  // Select SET DATE
    } else if (key == MK_SW1) {
        menu = 0;  // Select SET TIME
    }

    if (!menu) {
        clcd_print("                ", LINE1(0));
        clcd_print("                ", LINE2(0));
        clcd_print("*", LINE1(0));
        clcd_print("SET TIME", LINE1(2));
        clcd_print("SET DATE", LINE2(2));
    } else if (menu) {
        clcd_print("                ", LINE1(0));
        clcd_print("                ", LINE2(0));
        clcd_print("SET TIME", LINE1(2));
        clcd_print("*", LINE2(0));
        clcd_print("SET DATE", LINE2(2));
    }

    if (key == MK_SW4) {
        if (menu) {
            screen_flag = SET_DATE;  // Go to set date
        } else {
            screen_flag = SET_TIME;  // Go to set time
        }
    }

    if (key == MK_SW5) {
        screen_flag = MAIN_MENU;  // Go back to the main menu
    }
}
