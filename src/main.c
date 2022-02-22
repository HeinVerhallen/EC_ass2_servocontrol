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


#include <stdio.h>
#include <stdlib.h>

/* XC32 libraries */
#include <xc.h>
#include <sys/attribs.h>

#include <config.h>
// EC assignment 2 lib's
#include <pragma.h>
#include <config.h>
#include <oc.h>
#include <pwm.h>
#include <timer.h>
#include <spiflash.h>
#include <i2c.h>

#include <stdbool.h>
#include <debounce.h>

#include <servo.h>

/* This section lists the other files that are included in this file.
 */

#define SPIFLASH_PROG_ADDR 0x100


int main()
{
    
    _CP0_SET_COUNT(0);
    
    
    unsigned int len = 1;
    unsigned char pBuf[len];
    
    
    SPIFLASH_Init();
    
    SPIFLASH_Read(SPIFLASH_PROG_ADDR, pBuf, len);
    
    int servoPos = (int)pBuf[1]; // not sure if this works
    
    servo_init(40000000,1,servoPos);
    
    initButtons();
    
    buttonInstanceType buttonC;
    buttonInstanceType buttonR;
    initializeButtonInstance(&buttonC,50);
    initializeButtonInstance(&buttonR,50);
    
    bool debounceButtonR,debounceButtonC;
    
    macro_enable_interrupts();
    
    while (1)
    {
        int buttonC1 = prt_BTN_BTNC;
        int buttonR1 = prt_BTN_BTNR;
        
        debounceButtonC = debounceButtons(&buttonC, buttonC1);
        debounceButtonR = debounceButtons(&buttonR, buttonR1);
        
        if (buttonC1 == 1 && buttonR1 == 1)
        {
            continue;
        }
        
        if (debounceButtonC == 1)
        {
            if (servoPos < 45)
            {
                servoPos += 5;
                if (servoPos > 45)
                {
                    servoPos = 45;
                }
            }
            
        }
        else if(debounceButtonR == 1)
        {
           if (servoPos > -45)
            {
                servoPos -= 5;
                if (servoPos < -45)
                {
                    servoPos = -45;
                }
            }
        }
        SPIFLASH_Erase4k(SPIFLASH_PROG_ADDR);
        pBuf[1] = servoPos;
        SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR, pBuf, len);
        servo_setpos(1,servoPos);
    }
    return 0;
}