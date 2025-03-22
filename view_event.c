#include <xc.h>
#include "main.h"
#include "clcd.h"
#include "matrix_kepad.h"
#include "eeprom.h"
#include "rtc.h"

// Global variables and extern declarations
extern unsigned char screen_flag;
char view_event[8];
unsigned char index[2];
unsigned char view_count = 0;
char addr2 = 0x00;
unsigned char once = 0;
extern unsigned char key;
extern unsigned char event_cnt;
char view_arr[30][9];
void check();
// Function to view events
void view_events() {
    // Clear the LCD if we are displaying new events
    //clcd_clear();
    
    // Check if there are events
    if(event_cnt == 0) {
        clcd_print("# VIEW_EVENTS", LINE1(0));
        clcd_print("NO EVENTS...", LINE2(0));
        goto here;
    }else{

    // Initialize the address pointer for EEPROM read if this is the first time
    if (!once) {
        addr2 = 0x00;  // Start from the beginning of EEPROM
        for (int i = 0; i < event_cnt; i++) {
            int hr = (read_24c02(addr2++) * 10) + read_24c02(addr2++);
            int mn = (read_24c02(addr2++) * 10) + read_24c02(addr2++);
            int am_pm = read_24c02(addr2++);
            
            // Debug print: Ensure correct values are read from EEPROM
            // You can replace these with actual debug prints to a serial console or use breakpoints.
            //printf("Event %d: %02d:%02d %s\n", i+1, hr, mn, am_pm ? "PM" : "AM");

            // Store hour in view_arr
            view_arr[i][0] = '0' + (hr / 10);
            view_arr[i][1] = '0' + (hr % 10);
            view_arr[i][2] = ':'; // Separator
            // Store minutes in view_arr
            view_arr[i][3] = '0' + (mn / 10);
            view_arr[i][4] = '0' + (mn % 10);
            view_arr[i][5] = ' '; // Space before AM/PM
            // Store AM/PM in view_arr
            if (am_pm) {
                view_arr[i][6] = 'P';
                view_arr[i][7] = 'M';
            } else {
                view_arr[i][6] = 'A';
                view_arr[i][7] = 'M';
            }
            view_arr[i][8] = '\0'; // Null-terminate string
            clcd_print("                ", LINE1(0));  // Clear previous text
            clcd_print("                ", LINE2(0));
            clcd_print("# VIEWING EVENTS..", LINE1(0));
            clcd_print(view_arr[i],LINE2(0));
            
        }
        once = 1;
    }

     //Display current event
    index[0] = '0' + (view_count + 1);
    index[1] = '\0';

    clcd_print("                ", LINE1(0));  // Clear previous text
    clcd_print("                ", LINE2(0));  // Clear previous text
    clcd_print("# VIEWING EVENTS...", LINE1(0));
    clcd_print(index, LINE2(0));  // Display the current event index
    clcd_print(" ", LINE2(1));
    clcd_print(view_arr[view_count], LINE2(2));  // Display the event time

    // Button presses to navigate through events
    if (key == MK_SW2) {
        view_count++;
        if (view_count >= event_cnt) {
            view_count = 0;
        }
    } else if (key == MK_SW1) {
        if (view_count == 0) {
            view_count = event_cnt - 1;
        } else {
            view_count--;
        }
    }
   
    // Handle return to main menu (if SW5 is pressed)
   
}
     here:
    if (key == MK_SW5) {
        check();
        screen_flag = MAIN_MENU;
        addr2 = 0x00;
        once = 0;
    }
}
void check(){
    CLEAR_DISP_SCREEN;
    clcd_print("entered",LINE1(0));
    for(int i = 500000;i--;);
}