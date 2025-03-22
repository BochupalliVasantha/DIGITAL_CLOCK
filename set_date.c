/*
 * File:   set_date.c
 * Author: WINDOWS
 *
 * Created on 1 February, 2025, 10:37 AM
 */
#include <xc.h>
#include "main.h"
#include "clcd.h"
#include "matrix_kepad.h"
#include "rtc.h"
extern unsigned char  date[9];
extern unsigned char screen_flag;
unsigned int set_flag = 0, set_once = 0, sw_press = 0, delay = 0, field_select = 0;
unsigned char date_info, month, year, e_date, e_month, e_year, e_day;
unsigned char date_arr[9];
extern unsigned int day;
unsigned extern char key;
extern unsigned char * days[] = {" MO"," TU"," WE"," TH"," FR"," SA"," SU"};
void set_date() 
{
    if (!set_once) {
        // Initialize date from the input string
        date_info= (date[0] - '0') * 10 + (date[1] - '0');
        month = (date[3] - '0') * 10 + (date[4] - '0');
        year = (date[6] - '0') * 10 + (date[7] - '0');
        set_once = 1;
    }

    // Prepare the date array for display
    date_arr[0] = '0' + (date_info / 10);
    date_arr[1] = '0' + (date_info % 10);
    date_arr[2] = '-';
    date_arr[3] = '0' + (month / 10);
    date_arr[4] = '0' + (month % 10);
    date_arr[5] = '-';
    date_arr[6] = '0' + (year / 10);
    date_arr[7] = '0' + (year% 10);
    date_arr[8] = '\0';

    // Display the date
    clcd_print("    DD:MM:YY Day    ", LINE1(0));
    clcd_print("    ", LINE2(0));
    clcd_print(date_arr, LINE2(1));
    clcd_print(days[day-1], LINE2(10));

    // Increment seconds if MK_SW1 is pressed
    if (key == MK_SW1) {
        field_select = 1;
    }

    // Blink the display at regular intervals
    if (++delay == 150) {
        set_flag = !set_flag;
        delay = 0;
    }

    // Change the selected field (hr, min, sec) with MK_SW2
    if (key == MK_SW2) {
        sw_press = (sw_press + 1) % 4;
    }

    // Increment the selected field
    if (field_select) {
        if (sw_press == 0) {
            day++;
            if(day == 8)
            {
                day = 0;
            }
         
        } else if (sw_press == 1) {
            year++;
            if(year == 100)
            {
                year = 0;
            }
            year = (year + 1) % 99;
        } else if (sw_press == 2) {
            month++;
            if(month == 13)
            {
               month = 1; 
            }
        }
        else if (sw_press == 3) {
            date_info++;
            if(date_info == 32)
                date_info=1;
        }
        field_select = 0;
    }

    // Clear the display of the selected field while blinking
    if (set_flag) {
        if (sw_press == 0) {
            clcd_putch(' ', LINE2(10));
            clcd_putch(' ', LINE2(11));
        } else if (sw_press == 1) {
            clcd_putch(' ', LINE2(7));
            clcd_putch(' ', LINE2(8));
        } else if (sw_press == 2) {
            clcd_putch(' ', LINE2(4));
            clcd_putch(' ', LINE2(5));
        }
        else if (sw_press == 3) {
            clcd_putch(' ', LINE2(2));
            clcd_putch(' ', LINE2(1));
        }
    }

    // Save time to RTC if MK_SW4 is pressed
    if (key == MK_SW4) {
        e_date = ((date_info / 10) << 4) | (date_info % 10);
        e_year = ((year / 10) << 4) | (year % 10);
        e_month = ((month / 10) << 4) | (month % 10);
        e_day = day;

        write_ds1307(DATE_ADDR, e_date);
        write_ds1307(MONTH_ADDR, e_month);
        write_ds1307(YEAR_ADDR, e_year);
        write_ds1307(DAY_ADDR, e_day);
        clcd_print("                ",LINE1(0));
        clcd_print("                ",LINE2(0));
        clcd_print("Date is updated",LINE2(1));
         screen_flag = SET_TIME_DATE;
    }

    // Return to the main menu if MK_SW5 is pressed
    if (key == MK_SW5) {
        screen_flag = SET_TIME_DATE;
    }
}

