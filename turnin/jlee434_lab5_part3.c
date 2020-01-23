/*	Author: josiahlee
 *  Partner(s) Name: Shiyou Wang
 *	Lab Section:
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

enum States { start, but_up, but_down,  } state;
char goingBack;

void tick() {
	switch ( state ){
		case start: 
			state = but_up;
			PORTB = 0x00;
			goingBack = 0x00;
			break;
		case but_up:
			if ( PINA == 0x01 ){
				state = but_down;
				if (PORTB >= 0x3f){
					PORTB = 0x00;
					if (!goingBack)
					 	goingBack = 0x01;
					else
						goingBack = 0x00;
				}else if (!goingBack) {
					PORTB = ( PORTB <<1 ) + 0x01;
				}else if (goingBack){
					PORTB = ( PORTB >> 1 ) + 0x20;
				}
			}
			break;
		case but_down:
			if ( PINA == 0x00 ){
				state = but_up;
			}
			break;
		default: state = start; 
			break;
	}
}


int main(void) {
    /* Insert DDR and PORT initializations */
    DDRA = 0x00; PORTA = 0xff;
	DDRB = 0xff; PORTB = 0x00;
    /* Insert your solution below */
    while (1) {
    	tick();
    }
    return 1;
}
