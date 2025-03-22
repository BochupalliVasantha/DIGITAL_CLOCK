#include <xc.h>
#include "clcd.h"
#include "rtc.h"
#include "i2c.h"
#include "matrix_kepad.h"
#include "main.h"
#include "eeprom.h"

void display_event();
extern unsigned char screen_flag;
extern unsigned char once;
int c_hr, c_mn, c_ap; // current values
int e_hr, e_mn, e_ap; // existed data from EEPROM
extern char event_cnt;
char alarm_delay;
char am_pm;
int next_event;
int h, m, ap;
char alarm_s;
//extern unsigned char key;
unsigned char time[9];
unsigned char time_reg[3];
unsigned char date_reg[4];
unsigned char date[9];
unsigned int day;
unsigned char *days[] = {" MO", " TU", " WE", " TH", " FR", " SA", " SU"};
extern unsigned int count;
char addrs;

void default_screen(unsigned char key )
{
    
    if (!once)
    {
        clcd_print("                ", LINE1(0));
        clcd_print("                ", LINE2(0));
        once = 1;
    }

    get_time();
    get_date();

    if (count <= 5) // First 5 seconds, display time and date
    {
        clcd_print("DATE ", LINE1(0));
        clcd_print(date, LINE1(5));
        clcd_print(days[day - 1], LINE1(13));
        clcd_print("TIME ", LINE2(0));
        clcd_print(time, LINE2(5));
        if (am_pm == 0)
            clcd_print(" AM", LINE2(13));
        else
            clcd_print(" PM", LINE2(13));
    }
    else if (count > 5 && count <= 7) // Next 2 seconds, show time and upcoming event
    {
        clcd_print("TIME ", LINE1(0));
        clcd_print(time, LINE1(5));
        if (am_pm == 0)
            clcd_print(" AM", LINE1(13));
        else
            clcd_print(" PM", LINE1(13));
        clcd_print("EVENT ", LINE2(0));
        if (event_cnt == 0)
        {
            clcd_print(" NO EVENTS ", LINE2(6));
        }
        else if (event_cnt > 0)
        {
            display_event();
            addrs = (next_event * 5);
            h = (read_24c02(addrs) * 10) + read_24c02(addrs + 1);
            m = (read_24c02(addrs + 2) * 10) + read_24c02(addrs + 3);
            ap = read_24c02(addrs + 4);
            clcd_print(((h / 10) + '0'), LINE2(6));
            clcd_print((h % 10) + '0', LINE2(7));
            clcd_print(":", LINE2(8));
            clcd_print(((m / 10) + '0'), LINE2(9));
            clcd_print((m % 10) + '0', LINE2(10));
            clcd_print(" ", LINE2(11));
            if (ap)
                clcd_print("PM", LINE2(12));
            else
                clcd_print("AM", LINE2(12));
        }
    }
    else if (count > 7) // After 7 seconds, return to the initial state
    {
        count = 0; // Reset the cycle counter for next display cycle
    }

    // Check if the current time matches the upcoming event
    if (c_hr == h && c_mn == m && c_ap == ap)
    {
        RB0 = 1; // Turn on the LED
        alarm_s = 1;
    }
    else
    {
        if (alarm_s == 1)
        {
            alarm_delay++;
            if (alarm_delay >= 5) // 7 seconds alarm delay
            {
                alarm_s = 0;
                next_event++;
                next_event = next_event % event_cnt;
                alarm_delay = 0;
            }
            else
            {
                RB0 = 1; // Keep LED blinking
            }
        }
        else
        {
            RB0 = 0; // Turn off the LED
        }
    }
    
    
    if (key == MK_SW4)
    {
//        CLEAR_DISP_SCREEN;
//    clcd_print("helooooo",LINE2(1));
//    for(int i = 0 ; i<50000;i++);
        screen_flag = MAIN_MENU; // Return to main menu on pressing SW4
    }
}

void get_time(void) // To fetch the time
{
    time_reg[0] = read_ds1307(HOUR_ADDR);
    time_reg[1] = read_ds1307(MIN_ADDR);
    time_reg[2] = read_ds1307(SEC_ADDR);

    time[0] = '0' + ((time_reg[0] >> 4) & 0x03);
    time[1] = '0' + (time_reg[0] & 0x0F);
    time[2] = ':';
    time[3] = '0' + ((time_reg[1] >> 4) & 0x0F);
    time[4] = '0' + (time_reg[1] & 0x0F);
    time[5] = ':';
    time[6] = '0' + ((time_reg[2] >> 4) & 0x0F);
    time[7] = '0' + (time_reg[2] & 0x0F);
    time[8] = '\0';
    am_pm = ((time_reg[0] >> 5) & 0x01);
}

void get_date(void)
{
    date_reg[0] = read_ds1307(DATE_ADDR);
    date_reg[1] = read_ds1307(MONTH_ADDR);
    date_reg[2] = read_ds1307(YEAR_ADDR);
    date_reg[3] = read_ds1307(DAY_ADDR);
    date[0] = '0' + ((date_reg[0] >> 4) & 0x0F);
    date[1] = '0' + (date_reg[0] & 0x0F);
    date[2] = '-';
    date[3] = '0' + ((date_reg[1] >> 4) & 0x01);
    date[4] = '0' + (date_reg[1] & 0x0F);
    date[5] = '-';
    date[6] = '0' + ((date_reg[2] >> 4) & 0x0F);
    date[7] = '0' + (date_reg[2] & 0x0F);
    date[8] = '\0';
    day = (date_reg[3] & 0x07); // Adjust index for array lookup
}

void display_event()
{
    c_hr = ((time[0] - '0') * 10) + (time[1] - '0');
    c_mn = ((time[3] - '0') * 10) + (time[4] - '0');
    if (((time_reg[0] >> 5) & 0x01))
    {
        c_ap = 1;
    }
    else
    {
        c_ap = 0;
    }
    next_event = 0;
    addrs = 0x00;
    for (int i = 0; i < event_cnt; i++)
    {
        addrs = i * 5;
        e_hr = (read_24c02(addrs) * 10) + read_24c02(addrs + 1);
        e_mn = (read_24c02(addrs + 2) * 10) + read_24c02(addrs + 3);
        e_ap = read_24c02(addrs + 4);
        if (e_ap < c_ap)
        {
            continue;
        }
        else if (e_ap > c_ap)
        {
            next_event = i;
            break;
        }
        else // both current event and existed event have same am or pm
        {
            if (e_hr % 12 < c_hr % 12)
            {
                continue;
            }
            else if (e_hr % 12 > c_hr % 12)
            {
                next_event = i;
                break;
            }
            else // both current existed hours are same
            {
                if (e_mn < c_mn)
                {
                    continue;
                }
                else if (e_mn > c_mn)
                {
                    next_event = i;
                    break;
                }
                else
                {
                    break;
                }
            }
        }
    }
}
