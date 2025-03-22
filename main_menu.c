/*
 * File:   main_menu.c
 * Author: WINDOWS
 *
 * Created on 31 January, 2025, 11:19 PM
 */


#include <xc.h>
#include"clcd.h"
#include"rtc.h"
#include"i2c.h"
#include"matrix_kepad.h"
#include"main.h"
extern unsigned char screen_flag;
extern unsigned char key;
int menu_flag = 0;
void main_menu()
{
  if(key == MK_SW2)
  {
     menu_flag = 1;
  }
  else if(key == MK_SW1)
  {
      menu_flag = 0;
  }
  if(!menu_flag)
  {
      clcd_print("                ",LINE1(0));
      clcd_print("                ",LINE2(0));
      clcd_print("*",LINE1(0));
      clcd_print("SET TIME/DATE",LINE1(2));
      clcd_print("SET/VIEW EVENT",LINE2(2));
  }
  else if(menu_flag)
  {
      clcd_print("                ",LINE1(0));
      clcd_print("                ",LINE2(0));
      clcd_print("SET TIME/DATE",LINE1(2));
      clcd_print("*",LINE2(0));
      clcd_print("SET/VIEW EVENT",LINE2(2));
  }
  if(key == MK_SW4)
  {
      if(menu_flag)
      {
          screen_flag = SET_VIEW_EVENTS;
      }
      else
          screen_flag = SET_TIME_DATE;
  }
  if(key == MK_SW5)
  {
      screen_flag = DEFAULT_SCREEN;
  }
  
}