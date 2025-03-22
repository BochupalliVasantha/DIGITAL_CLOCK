/*
 * File:   set_time.c
 * Author: WINDOWS
 *
 * Created on 1 February, 2025, 12:40 AM
 */


#include <xc.h>
#include"clcd.h"
#include"rtc.h"
#include"i2c.h"
#include"matrix_kepad.h"
#include"main.h"
extern unsigned char  time[9];
extern unsigned char screen_flag;
unsigned int set_flag = 0, set_once = 0, sw_press = 0, delay = 0, field_select = 0;
unsigned char hour, min, sec, s_hr, s_min, s_sec,s_am_pm;
unsigned char time_arr[9];
extern char am_pm;
unsigned extern char key;
void set_time() {
    if (!set_once) {
        get_time();
        // Initialize time from the input string
        hour = (time[0] - '0') * 10 + (time[1] - '0');
        min = (time[3] - '0') * 10 + (time[4] - '0');
        sec = (time[6] - '0') * 10 + (time[7] - '0');
        if(am_pm == 0)
        clcd_print(" AM",LINE2(13));
    else if(am_pm == 1)
        clcd_print(" PM",LINE2(13));
        set_once = 1;
    }

    // Prepare the time array for display
    time_arr[0] = '0' + (hour / 10);
    time_arr[1] = '0' + (hour % 10);
    time_arr[2] = ':';
    time_arr[3] = '0' + (min / 10);
    time_arr[4] = '0' + (min % 10);
    time_arr[5] = ':';
    time_arr[6] = '0' + (sec / 10);
    time_arr[7] = '0' + (sec % 10);
    time_arr[8] = '\0';

    // Display the time
    clcd_print("    HH:MM:SS    ", LINE1(0));
    clcd_print("    ", LINE2(0));
    clcd_print(time_arr, LINE2(4));
    if(am_pm == 0)
        clcd_print(" AM",LINE2(13));
    else if(am_pm == 1)
        clcd_print(" PM",LINE2(13));

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
        sw_press++;
        if(sw_press == 4)
        {
            sw_press = 0;
        }
        //qsw_press = (sw_press + 1) % 5;
    }

    // Increment the selected field
    if (field_select) {
        if(sw_press == 0)
        {
            am_pm = !am_pm;
        }
        else if (sw_press == 1) {
            sec++;
            if(sec == 61)
            {
                sec = 1;
            }
        } else if (sw_press == 2) {
            min++;
            if(min == 61)
            {
                min = 1;
            }
        } else if (sw_press == 3) {
            hour++;
            if(hour == 13)
            {
                hour = 1;
            }
        }
        
        field_select = 0;
    }

    // Clear the display of the selected field while blinking
    if (set_flag) {
        if (sw_press == 0) {
            clcd_putch(' ', LINE2(14));
            clcd_putch(' ', LINE2(15));
        }
        else if (sw_press == 1) {
            clcd_putch(' ', LINE2(10));
            clcd_putch(' ', LINE2(11));
        } else if (sw_press == 2) {
            clcd_putch(' ', LINE2(7));
            clcd_putch(' ', LINE2(8));
        } else if (sw_press == 3) {
            clcd_putch(' ', LINE2(4));
            clcd_putch(' ', LINE2(5));
        }
       
    }

    // Save time to RTC if MK_SW5 is pressed
    if (key == MK_SW4) {
        s_hr = (((hour / 10) << 4) | (hour % 10)) | 0x40 | (am_pm << 5);
        s_min = ((min / 10) << 4) | (min % 10);
        s_sec = ((sec / 10) << 4) | (sec % 10);
        write_ds1307(HOUR_ADDR, s_hr);
        write_ds1307(MIN_ADDR, s_min);
        write_ds1307(SEC_ADDR, s_sec);
        
        
        clcd_print("                ",LINE1(0));
        clcd_print("                ",LINE2(0));
        clcd_print("Time is updated",LINE2(1));
        for (int j = 0; j < 5000; j++);
         screen_flag = SET_TIME_DATE;
    }

    // Return to the main menu if MK_SW6 is pressed
    if (key == MK_SW5) {
        screen_flag = SET_TIME_DATE;
    }
}
