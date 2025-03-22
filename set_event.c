#include <xc.h>
#include "main.h"
#include "clcd.h"
#include "matrix_kepad.h"
#include "eeprom.h"
#include "rtc.h"

extern unsigned char  time[9];
extern unsigned char screen_flag;
unsigned int set_flag = 0, set_once = 0, sw_press = 0, delay = 0, field_select = 0;
unsigned char hr, mn, s_hr, s_mn, s_ap;
unsigned char time_up[9];
unsigned extern char key;
extern char am_pm;
char event_cnt = 0;

#define MAX_EVENTS 40  // Limit the number of events to 40

void set_events() {
    if (!set_once) {
        get_time();
        clcd_print("                ", LINE1(0));
        clcd_print("                ", LINE2(0));
        // Initialize time read from rtc into var
        hr = (time[0] - '0') * 10 + (time[1] - '0');
        mn = (time[3] - '0') * 10 + (time[4] - '0');
        if(am_pm == 0) // checking whether AM or PM
            clcd_print(" AM", LINE2(13));
        else if(am_pm == 1)
            clcd_print(" PM", LINE2(13));
        set_once = 1;
    }

    // Prepare the time array for display
    time_up[0] = '0' + (hr / 10);
    time_up[1] = '0' + (hr % 10);
    time_up[2] = ':';
    time_up[3] = '0' + (mn / 10);
    time_up[4] = '0' + (mn % 10);
    time_up[5] = ' ';
    if(am_pm) {
        time_up[6] = 'P';
        time_up[7] = 'M';
    } else {
        time_up[6] = 'A';
        time_up[7] = 'M';
    }
    time_up[8] = '\0';

    // Display the time
    clcd_print("    HH:MM:AM/PM    ", LINE1(0));
    clcd_print("    ", LINE2(0));
    clcd_print(time_up, LINE2(4));
    clcd_print("    ", LINE2(12));

    // Increment seconds if MK_SW1 is pressed
    if (key == MK_SW1) {
        field_select = 1;
    }

    // Blink the display at regular intervals
    if (++delay == 150) {
        set_flag = !set_flag;
        delay = 0;
    }

    // Change the selected field (hr, min, am/pm) with MK_SW2
    if (key == MK_SW2) {
        sw_press = (sw_press + 1) % 3;
    }

    // Increment the selected field
    if (field_select) {
        if (sw_press == 0) {
            am_pm = !am_pm;
        } else if (sw_press == 1) {
            mn = (mn + 1) % 60;
        } else if (sw_press == 2) {
            hr = (hr + 1) % 12;
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
    }

    // Storing the event if MK_SW4 is pressed and going back to previous menu
    if (key == MK_SW4) {
        if (event_cnt < MAX_EVENTS) {
            screen_flag = SET_VIEW_EVENTS;
            event_cnt++; // incrementing event count every time MK_SW4 is pressed
            store_events(event_cnt, hr, mn, am_pm); // calling storing event fun by passing required arguments
            screen_flag = SET_VIEW_EVENTS; // setting the screen flag to previous menu after storing the events
        } else {
            clcd_print("                ", LINE1(0));
            clcd_print("Event Limit Reached", LINE2(0));
            for (int i = 0; i < 5000; i++);
        }
    }
    // Return to the main menu if MK_SW5 is pressed
    if (key == MK_SW5) {
        screen_flag = SET_VIEW_EVENTS;
    }
}

//void store_events(int event_cnt, int hour, int min, int am_pm) {
//    char addr = 0x00; // initializing addr to 0th byte or starting byte
//    int a_p, hr, mn;
//    int flag = 1; // to check whether the event is already present or not
//    int i = 0; // to pass the iterative info like at which event we need to do shifting like that
//
//    // If it's the first event, store it directly
//    if (event_cnt == 1) {
//        write_24c02(addr++, hour / 10);
//        write_24c02(addr++, hour % 10);
//        write_24c02(addr++, min / 10);
//        write_24c02(addr++, min % 10);
//        write_24c02(addr++, am_pm);
//    }
//    else { // Check if the events should be stored in ascending order
//        for (i = 0; i < event_cnt; i++) { // running a loop for event count times to check the present event is where to store
//            addr = i * 5; // every time updating addr with the starting addr of every event for each iteration
//            a_p = read_24c02(addr + 4); // reading am/pm if they are different continue with next iteration because we need to store it after that present event
//            hr = (read_24c02(addr) * 10) + read_24c02(addr + 1);
//            mn = (read_24c02(addr + 2) * 10) + read_24c02(addr + 3);
//            if (am_pm > a_p) {
//                continue;
//            } else if (am_pm < a_p) {
//                shift_store_event(i, addr, event_cnt);
//                break;
//            } else if (a_p == am_pm) { // if am_pm matches for both events
//                if (hour > hr) {
//                    continue;
//                } else if (hour < hr) {
//                    shift_store_event(i, addr, event_cnt);
//                    break;
//                }
//                if (hour == hr) {
//                    if (min > mn) {
//                        continue;
//                    } else if (min < mn) {
//                        shift_store_event(i, addr, event_cnt);
//                        break;
//                    } else {
//                        flag = 0;
//                        clcd_print("                ", LINE1(0));
//                        clcd_print("                ", LINE2(0));
//                        clcd_print("Event already", LINE1(0));
//                        clcd_print("Existed....    ", LINE2(0));
//                        for (int i = 0; i < 5000; i++);
//                        break;
//                    }
//                }
//            }
//        }
//        if (flag) { // if the event is not repeated then only store the event into eeprom
//            addr = 5 * i;
//            write_24c02(addr++, hour / 10);
//            write_24c02(addr++, hour % 10);
//            write_24c02(addr++, min / 10);
//            write_24c02(addr++, min % 10);
//            write_24c02(addr++, am_pm);
//            clcd_print("                ", LINE1(0));
//            clcd_print("                ", LINE2(0));
//            clcd_print("Event stored...", LINE1(0));
//
//            for (int j = 0; j < 5000; j++){}
//        }
//    }
//}
//
//void shift_store_event(int i, int addr, int event_count) {
//    int hr, mn, a_p;
//    for (int j = event_count; j > i; j--) { // if we do not want to lose the data we have to shift the last event
//        char addr1 = 5 * (j - 1);
//        hr = (read_24c02(addr1) * 10) + read_24c02(addr1 + 1);
//        mn = (read_24c02(addr1 + 2) * 10) + read_24c02(addr1 + 3);
//        a_p = read_24c02(addr1 + 4);
//        // store at the next address
//        write_24c02(addr1, hr / 10);
//        write_24c02(addr1 + 1, hr % 10);
//        write_24c02(addr1 + 2, mn / 10);
//        write_24c02(addr1 + 3, mn % 10);
//        write_24c02(addr1 + 4, a_p);
//    }
//}


void store_events(int event_cnt, int hour, int min, int am_pm) {
    char addr = 0x00;
    int a_p, hr, mn;
    int flag = 1;
    int i = 0;

    if (event_cnt == 1) {
        write_24c02(addr++, hour / 10);
        write_24c02(addr++, hour % 10);
        write_24c02(addr++, min / 10);
        write_24c02(addr++, min % 10);
        write_24c02(addr++, am_pm);
        addr = 0x00;
        char arr[10];
        int hr1 = (read_24c02(addr) * 10) + read_24c02(addr+1);
            int mn1 = (read_24c02(addr+2) * 10) + read_24c02(addr+3);
            int am_pm1 = read_24c02(addr+4);
            
            // Debug print: Ensure correct values are read from EEPROM
            // You can replace these with actual debug prints to a serial console or use breakpoints.
            //printf("Event %d: %02d:%02d %s\n", i+1, hr, mn, am_pm ? "PM" : "AM");

            // Store hour in view_arr
            arr[0] = '0' + (hr1 / 10);
            arr[1] = '0' + (hr1 % 10);
            arr[2] = ':'; // Separator
            // Store minutes in view_arr
            arr[3] = '0' + (mn1 / 10);
            arr[4] = '0' + (mn1 % 10);
            arr[5] = ' '; // Space before AM/PM
            // Store AM/PM in view_arr
            if (am_pm1) {
                arr[6] = 'P';
                arr[7] = 'M';
            } else {
                arr[6] = 'P';
                arr[7] = 'M';
            }
            arr[8] = '\0';
        clcd_print("                ", LINE1(0));  // Clear previous text
            clcd_print("                ", LINE2(0));
            clcd_print("# STORED EVENTS..", LINE1(0));
            clcd_print(arr,LINE2(0));
            for(int i = 0; i< 50000;i++);
            //screen_flag = SET_VIEW_EVENTS;
            
            
    }
    else {
        for (i = 0; i < event_cnt; i++) {
            addr = i * 5;
            a_p = read_24c02(addr + 4);
            hr = (read_24c02(addr) * 10) + read_24c02(addr + 1);
            mn = (read_24c02(addr + 2) * 10) + read_24c02(addr + 3);
            
            if (am_pm > a_p) {
                continue;
            } else if (am_pm < a_p) {
                shift_store_event(i, addr, event_cnt);
                break;
            } else {
                if (hour > hr) {
                    continue;
                } else if (hour < hr) {
                    shift_store_event(i, addr, event_cnt);
                    break;
                } else {
                    if (min > mn) {
                        continue;
                    } else if (min < mn) {
                        shift_store_event(i, addr, event_cnt);
                        break;
                    } else {
                        flag = 0;
                        clcd_print("Event already", LINE1(0));
                        clcd_print("Existed....    ", LINE2(0));
                        for (int i = 0; i < 5000; i++);
                        break;
                    }
                }
            }
        }
        
        if (flag) {
            addr = 5 * i;
            write_24c02(addr++, hour / 10);
            write_24c02(addr++, hour % 10);
            write_24c02(addr++, min / 10);
            write_24c02(addr++, min % 10);
            write_24c02(addr++, am_pm);
            clcd_print("Event stored...", LINE1(0));
            addr = 5 * i;
        char arr[10];
        int hr1 = (read_24c02(addr) * 10) + read_24c02(addr+1);
            int mn1 = (read_24c02(addr+2) * 10) + read_24c02(addr+3);
            int am_pm1 = read_24c02(addr+4);
            
            // Debug print: Ensure correct values are read from EEPROM
            // You can replace these with actual debug prints to a serial console or use breakpoints.
            //printf("Event %d: %02d:%02d %s\n", i+1, hr, mn, am_pm ? "PM" : "AM");

            // Store hour in view_arr
            arr[0] = '0' + (hr1 / 10);
            arr[1] = '0' + (hr1 % 10);
            arr[2] = ':'; // Separator
            // Store minutes in view_arr
            arr[3] = '0' + (mn1 / 10);
            arr[4] = '0' + (mn1 % 10);
            arr[5] = ' '; // Space before AM/PM
            // Store AM/PM in view_arr
            if (am_pm1) {
                arr[6] = 'P';
                arr[7] = 'M';
            } else {
                arr[6] = 'P';
                arr[7] = 'M';
            }
            arr[8] = '\0';
            clcd_print("                ", LINE1(0));  // Clear previous text
            clcd_print("                ", LINE2(0));
            clcd_print("# STORED EVENTS..", LINE1(0));
            clcd_print(arr,LINE2(0));
            for (int j = 0; j < 50000; j++);
            
        }
    }
}

void shift_store_event(int i, int addr, int event_count) {
    int hr, mn, a_p;
    for (int j = event_count; j > i; j--) {
        char addr1 = 5 * (j - 1);
        hr = (read_24c02(addr1) * 10) + read_24c02(addr1 + 1);
        mn = (read_24c02(addr1 + 2) * 10) + read_24c02(addr1 + 3);
        a_p = read_24c02(addr1 + 4);
        
        write_24c02(addr1, hr / 10);
        write_24c02(addr1 + 1, hr % 10);
        write_24c02(addr1 + 2, mn / 10);
        write_24c02(addr1 + 3, mn % 10);
        write_24c02(addr1 + 4, a_p);
    }
}