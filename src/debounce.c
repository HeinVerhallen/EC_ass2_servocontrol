/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
// Function:    Debouncing buttons
// Parameters:  buttonInstanceType  - struct of button
//              readButton          - result of readed button, can be 1 (On) or 0 (Off))
// Returns:     result              - 1 if button is pressed for longer than the delay time, 0 if button is not pressed

#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include <sys/attribs.h>
#include <debounce.h>
#include <stdbool.h>

#include <config.h>

// Sysclock is 80MHz. Use default pbclk devider = 8 (peripheral clock is hereby 10MHz)
#define CONVERT_MS_TO_TICKS(ms) (4000000/1000*ms)

void initButtons()
{
    tris_BTN_BTNC = 1;
    tris_BTN_BTNR = 1;
    ansel_BTN_BTNR = 0;
}

void initializeButtonInstance(buttonInstanceType *button, int debounceTime_ms){
    button->prev_time_ms = 0;
    button->debounceTime_ms = debounceTime_ms;
    button->state = 0;
    button->prev_state = 0;
}

bool debounceButtons(buttonInstanceType *button, int readButton){
    bool result = false;
    const unsigned int delay = CONVERT_MS_TO_TICKS(button->debounceTime_ms);
    int readingBTN = readButton;
    
    // If button is pressed for the first time, the counter starts
    if (readingBTN != button->prev_state){ 
        button->prev_time_ms = _CP0_GET_COUNT();
    }
    
    // If button is still pressed after the delay time, the function returns true.
    if(_CP0_GET_COUNT() - button->prev_time_ms >= delay){  
        if (readingBTN != button->state){
            button->state = readingBTN;
            if (button->state == true) {
                result = true;
            }
        }
    }
    button->prev_state = readingBTN;
    return result;
}