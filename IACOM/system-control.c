#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include <pic16f84a.h>

#pragma config FOSC = XT        // Oscillator Selection bits (XT oscillator)
#pragma config WDTE = OFF       // Watchdog Timer (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (Power-up Timer is disabled)
#pragma config CP = OFF         // Code Protection bit (Code protection disabled)

void configIO(){
    TRISAbits.TRISA1 = 1; // configura RA1 como entrada
    TRISAbits.TRISA2 = 1; // configura RA2 como entrada
    TRISAbits.TRISA3 = 1; // configura RA3 como entrada
    TRISAbits.TRISA4 = 1; // configura RA4 como entrada

    TRISBbits.TRISB0 = 0; // configura RB0 como saída
    TRISBbits.TRISB1 = 0; // configura RB1 como saída
    TRISBbits.TRISB2 = 0; // configura RB2 como saída
}

void systemControl(){
    while(1){
        short int I = PORTAbits.RA1; // configura RA1 como I
        short int A = PORTAbits.RA2; // configura RA2 como A
        short int B = PORTAbits.RA3; // configura RA3 como B
        short int C = PORTAbits.RA4; // configura RA4 como C

        short int Eve = (I && !A && !B) || (I && !A && C);
        short int Evs = I && B && C;
        short int Err = I && B && !C || I && A && !B;

        PORTBbits.RB0 = Evs; // configura RB0 como Evs
        PORTBbits.RB1 = Eve; // configura RB1 como Eve
        PORTBbits.RB2 = Err; // configura RB2 como Err
    }
}

void main(){
    configIO();
    systemControl();

    return;
}
