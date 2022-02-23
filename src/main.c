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
    
    _CP0_SET_COUNT(0); // 80mhz
    
    
    unsigned int len = 1;
    unsigned char pBuf[len];
    
    
    SPIFLASH_Init();
    
    SPIFLASH_Read(SPIFLASH_PROG_ADDR, pBuf, len);
    
    int servoPos = (int)pBuf[1] - 45; // not sure if this works
    if (servoPos > 45 || servoPos < -45)
    {
        servoPos = 0;
    }
    float servoPosTemp = servoPos;
    
    servo_init(40000000,1,servoPos);
    
    initButtons();
    
    buttonInstanceType buttonC;
    buttonInstanceType buttonR;
    initializeButtonInstance(&buttonC,50);
    initializeButtonInstance(&buttonR,50);
    
    bool debounceButtonR,debounceButtonC;
    
    macro_enable_interrupts();
    
    int buttonCactive = 0;
    int buttonRactive = 0;
    
    const unsigned int waitTime = 1333333;
    
    long unsigned int buttonCwait = 0;
    long unsigned int buttonRwait = 0;
    
    int updateFlash = 0;
    
    while (1)
    {
        int buttonC1 = prt_BTN_BTNC;
        int buttonR1 = prt_BTN_BTNR;
        long unsigned int currentTime = _CP0_GET_COUNT();
        debounceButtonC = debounceButtons(&buttonC, buttonC1);
        debounceButtonR = debounceButtons(&buttonR, buttonR1);
        
        if (buttonC1 == 1 && buttonR1 == 1)
        {
            continue;
        }
        
        if (debounceButtonC == 1 || buttonCactive)
        {
            if (buttonC1)
            {
                buttonCactive = 1;
            }
            else if (!buttonC1)
            {
                buttonCactive = 0;
            }
            if (servoPosTemp < 45 && (buttonCwait + waitTime <= currentTime))
            {
                buttonCwait = currentTime;
                servoPosTemp += (2.0/6.0);
                if (servoPosTemp > 45)
                {
                    servoPosTemp = 45;
                }
            }
            
        }
        else if(debounceButtonR == 1 || buttonRactive)
        {
            if (buttonR1)
            {
                buttonRactive = 1;
            }
            else if (!buttonR1)
            {
                buttonRactive = 0;
            }
           if (servoPosTemp > -45 && (buttonRwait + waitTime <= currentTime))
            {
                buttonRwait = currentTime;
                servoPosTemp -= (2.0/6.0);
                if (servoPosTemp < -45)
                {
                    servoPosTemp = -45;
                }
            }
        }
        servoPos = (int)servoPosTemp;
        if (buttonC1 == 0 && buttonR1 == 0 && updateFlash == 1)
        {
            updateFlash = 0;
            SPIFLASH_Erase4k(SPIFLASH_PROG_ADDR);
            pBuf[1] = servoPos + 45;
            SPIFLASH_ProgramPage(SPIFLASH_PROG_ADDR, pBuf, len);
        }
        else if (buttonC1 == 1 || buttonR1 == 1)
        {
            updateFlash = 1;
        }
        servo_setpos(1,servoPos);
    }
    return 0;
}