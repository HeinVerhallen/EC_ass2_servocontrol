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

void __ISR(_OUTPUT_COMPARE_1_VECTOR, ipl7auto) Oc1ISR() {
    PORTAbits.RA15 = 0;
    //RPA15R = 0;
    IFS0bits.OC1IF = 0;
}

void __ISR(_OUTPUT_COMPARE_2_VECTOR, ipl7auto) Oc2ISR() {
    RPA15R = 0;
    IFS0bits.OC2IF = 0;
}

void __ISR(_OUTPUT_COMPARE_3_VECTOR, ipl7auto) Oc3ISR() {
    RPA15R = 0;
    IFS0bits.OC3IF = 0;
}

void __ISR(_OUTPUT_COMPARE_4_VECTOR, ipl7auto) Oc4ISR() {
    RPA15R = 0;
    IFS0bits.OC4IF = 0;
}

void __ISR(_OUTPUT_COMPARE_5_VECTOR, ipl7auto) Oc5ISR() {
    RPA15R = 0;
    IFS0bits.OC5IF = 0;
}

void __ISR(_TIMER_1_VECTOR, ipl7auto) Timer1ISR() {
    IFS0bits.T1IF = 0;
}

void __ISR(_TIMER_2_VECTOR, ipl7auto) Timer2ISR() {
    PORTAbits.RA15 = 1;
    IFS0bits.T2IF = 0;
}

void __ISR(_TIMER_3_VECTOR, ipl7auto) Timer3ISR() {
    RPA15R = 1;
    IFS0bits.T3IF = 0;
}

void __ISR(_TIMER_4_VECTOR, ipl7auto) Timer4ISR() {
    IFS0bits.T4IF = 0;
}

void __ISR(_TIMER_5_VECTOR, ipl7auto) Timer5ISR() {
    IFS0bits.T5IF = 0;
}