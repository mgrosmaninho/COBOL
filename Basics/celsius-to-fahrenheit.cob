       IDENTIFICATION DIVISION. *> Section for the program’s identification.
        PROGRAM-ID. CELSIUS-TO-FAHRENHEIT. *> Program name.
        AUTHOR. Manuel Gomes Rosmaninho. *> Author name.
        DATE-WRITTEN. 24/06/24. *> Date the program was written.
        DATE-COMPILED. 24/06/24. *> Date the program was compiled.

      ****************************************************************
      * DESCRIPTION: PROGRAM TO CONVERT CELSIUS TO FAHRENHEIT
      ****************************************************************

       ENVIRONMENT DIVISION. *> Section for the program’s environment.

       DATA DIVISION. *> Section for the program’s data.
       WORKING-STORAGE SECTION. *> Section for the program’s working storage.
       *> Declare CELSIUS as a 3-digit integer to store the input in Celsius.
       01 CELSIUS     PIC 9(3).
       *> Declare FAHRENHEIT as a number with 3 digits before
       *> and 3 digits after the decimal point.
       01 FAHRENHEIT  PIC 999V999.

       PROCEDURE DIVISION. *> Section for the program’s procedure.
           *> Display a message prompting the user to input a temperature.
           DISPLAY "Input a temperature in Celsius".
           ACCEPT CELSIUS. *> Accept user input for the temperature in Celsius.
           *> Compute Fahrenheit as (Celsius * 1.8) + 32 
           *> and store the result in FAHRENHEIT.
           COMPUTE FAHRENHEIT =(CELSIUS * 1.8) + 32.
           *> Display the Celsius value and the corresponding Fahrenheit value.
           DISPLAY CELSIUS " Celsius in Fahrenheit is " FAHRENHEIT.
           STOP RUN. *> End program execution.