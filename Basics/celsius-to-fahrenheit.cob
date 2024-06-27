       *> setup the identification division
       IDENTIFICATION DIVISION.
        *> setup the program id
        PROGRAM-ID. CELSIUS-TO-FAHRENHEIT.
        *> setup the author
        AUTHOR. Manuel Gomes Rosmaninho.
        *> setup the date written
        DATE-WRITTEN. 24/06/24.
        *> setup the date compiled
        DATE-COMPILED. 24/06/24.
      ****************************************************************
      * DESCRIPTION: CONVERT CELSIUS TO FAHRENHEIT
      ****************************************************************
       *> setup the environment division
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
       *> working storage defines variables
       WORKING-STORAGE SECTION.
       *> defines a number with 3 spaces
       01 CELSIUS     PIC 9(3).
       *> defines a number with 3 spaces and 3 decimal spaces
       *> different way from above to define a number
       01 FAHRENHEIT  PIC 999V999.
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> print a string asking for the input
           DISPLAY "Input a temperature in Celsius".
           *> gets the user input
           ACCEPT CELSIUS.
           *> computes (Celsius times 1.8) add 32 and
           *> the result in Fahrenheit
           COMPUTE FAHRENHEIT =(CELSIUS * 1.8) + 32.
           *> print variable Celsius followed by a message
           *> followed by variable Fahrenheit
           DISPLAY CELSIUS " Celsius in Fahrenheit is " FAHRENHEIT.
           *> stop the program
           STOP RUN.