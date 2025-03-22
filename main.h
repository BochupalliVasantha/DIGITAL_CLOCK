/*
 * File:   main.h
 * Author: Vasantha
 * Created on 31 January, 2025, 7:47 PM
 */
#ifndef MAIN_H
#define MAIN_H
#define DEFAULT_SCREEN   1
#define MAIN_MENU        2
#define SET_TIME_DATE    3
#define SET_VIEW_EVENTS   4
#define SET_TIME         5
#define SET_DATE         6
#define SET_EVENT        7
#define VIEW_EVENTS      8
void default_screen(unsigned char key);
void main_menu(void);
void set_time_date(void);
void set_view_events(void);
void set_time(void);
void set_date(void);
void set_events(void);
void view_events(void);
void store_events(int event_cnt,int hour,int min,int am_pm);
void shift_store_event(int i,int addr,int event_count);
#endif




