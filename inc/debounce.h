/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef debounce_H    /* Guard against multiple inclusion */
#define debounce_H

#include <stdbool.h>


void initButtons(void);


typedef struct
{
    unsigned int prev_time_ms;
    unsigned int debounceTime_ms;
    unsigned int state;
    unsigned int prev_state;
}buttonInstanceType;



void initializeButtonInstance(buttonInstanceType *button, int debounceTime_ms);

// Function:    Debouncing buttons
// Parameters:  buttonInstanceType  - struct of button
//              readButton          - result of readed button, can be 1 (On) or 0 (Off))
// Returns:     result              - 1 if button is pressed for longer than the delay time, 0 if button is not pressed
bool debounceButtons(buttonInstanceType *button, int readButton);

#endif