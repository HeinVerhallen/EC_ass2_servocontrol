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
#include <servo.h>
#include <pwm.h>

#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include <sys/attribs.h>

#include <config.h>



unsigned char servo_init
(
int fpb,
int channel,
int angle
)
{
    if (channel == 1)
    {
        TRISAbits.TRISA15 = 0; // UHH WELKE WAARDE MOET DIT ZIJN
        //LATAbits.LATA15 = 0; // UHH WELKE WAARDE MOET DIT ZIJN
        //RPA15R = 0;
    }
    else
    {
        return false;
    }
    
    
    
    pwm_init(fpb, 2, channel, 20);
    servo_setpos(channel,angle);

    return 1;
}

void servo_setpos
(
int channel,
int angle
)
{
    int widthUs = (0.9 + ((angle + 45) * (1.0 / 90.0) * 1.2)) * 1000; 
    //widthUs = (40/3)*angle + 1500;
    pwm_setWidth(2, channel, widthUs);
}