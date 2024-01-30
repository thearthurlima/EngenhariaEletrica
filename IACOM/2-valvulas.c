/** ###################################################################
**     Filename  : exam.c
**     Project   : exam
**     Processor : MC9S12C128CFU16
**     Version   : Driver 01.14
**     Compiler  : CodeWarrior HC12 C Compiler
**     Date/Time : 30/11/2023, 10:28
**     Abstract  :
**         Main module.
**         This module contains user's application code.
**     Settings  :
**     Contents  :
**         No public methods
**
** ###################################################################*/
/* MODULE exam */

/* Including needed modules to compile this module/procedure */
#include "Cpu.h"
#include "Events.h"
#include "out_Evs.h"
#include "out_Eve.h"
#include "out_Err.h"
#include "input_I.h"
#include "input_A.h"
#include "input_B.h"
#include "input_C.h"
#include "input_D.h"
/* Include shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"

/* User includes (#include below this line is not maintained by Processor Expert) */

void main(void)
{
  /* Write your local variable definition here */
  
  // Input Variables
  short int var_A;
  short int var_B;
  short int var_C;
  short int var_D;
  
  // Output Variables
  short int Eve;
  short int Evs;
  short int Err;

  /*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
  PE_low_level_init();
  /*** End of Processor Expert internal initialization.                    ***/

  /* Write your code here */
  for(;;){
     var_A = input_A_GetVal();
     var_B = input_B_GetVal();
     var_C = input_C_GetVal();
     var_D = input_D_GetVal();
     
     var_A = !var_A;
     
     if(input_I_GetVal()){
       Eve = ((!var_A && !var_B && !var_C) || (!var_A && var_C && var_D));
       Evs = (var_B && var_C && var_D);
       Err = ((var_C && !var_D) || (var_B && !var_C) || (var_A && !var_B) || (var_A && !var_D));
       
       if(Eve){
          out_Eve_ClrVal();
       } else {
          out_Eve_SetVal(); 
         }
       
       if(Evs){
          out_Evs_ClrVal();
       } else {
          out_Evs_SetVal(); 
         }
       
       if(Err){
          out_Err_ClrVal();
       } else {
          out_Err_SetVal(); 
         }
     } else{
         out_Eve_SetVal();
         out_Evs_SetVal();
         out_Err_SetVal(); 
     }
  }
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;){}
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/
} /*** End of main routine. DO NOT MODIFY THIS TEXT!!! ***/

/* END exam */
/*
** ###################################################################
**
**     This file was created by Processor Expert 3.02 [04.44]
**     for the Freescale HCS12 series of microcontrollers.
**
** ###################################################################
*/