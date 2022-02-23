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

#ifndef _SERVO_H    /* Guard against multiple inclusion */
#define _SERVO_H

void servo_T2callback();
void servo_OC1callback();

/* ========================================================================== */
/* function: servo_init( fpb, channel, angle ); */
/* */
/* description: initialises a servo channel. */
/* */
/* pre: fpb - peripheral bus clock frequency in Hz */
/* channel - number of the servo channel to initialise */
/* (range 1...5) */
/* angle - servo opening angle in degrees (range -45...45) */
/* */
/* post: return value - 0 if initialisation failed, 1 if succeeded */
/* ========================================================================== */
unsigned char servo_init
(
int fpb,
int channel,
int angle
);
/* ========================================================================== */
/* function: servo_setpos( fpb, channel, angle ); */
/* */
/* description: changes the opening angle for a servo channel. */
/* */
/* pre: channel - number of the servo channel to set the position for */
/* (range 1...5) */
/* angle - servo opening angle in degrees (range -45...45) */
/* */
/* post: none */
/* ========================================================================== */
void servo_setpos
(
int channel,
int angle
);


#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
