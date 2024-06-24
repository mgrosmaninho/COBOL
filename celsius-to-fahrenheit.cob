       IDENTIFICATION DIVISION.
        PROGRAM-ID. CELSIUS-TO-FAHRENHEIT.
        AUTHOR. Manuel Gomes Rosmaninho.
        DATE-WRITTEN. 24/06/24.
        DATE-COMPILED. 24/06/24.
      ****************************************************************
      * DESCRIPTION: CONVERT CELSIUS TO FAHRENHEIT
      ****************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 CELSIUS     PIC 9(3).
       77 FAHRENHEIT  PIC 999V999.
       PROCEDURE DIVISION.
           DISPLAY "Input a temperature in Celsius".
           ACCEPT CELSIUS.
           COMPUTE FAHRENHEIT =(CELSIUS * 1.8) + 32.
           DISPLAY CELSIUS " Celsius in Fahrenheit is " FAHRENHEIT.
           STOP RUN.