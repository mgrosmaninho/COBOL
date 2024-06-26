       *> setup the identification division
       IDENTIFICATION DIVISION.
        *> setup the program id
        PROGRAM-ID. STRING-INPUT.
        *> setup the author
        AUTHOR. Manuel Gomes Rosmaninho.
        *> setup the date written
        DATE-WRITTEN. 24/06/24.
        *> setup the date compiled
        DATE-COMPILED. 24/06/24.
      ****************************************************************
      * DESCRIPTION: TAKE STRING INPUT AND DISPLAY.
      ****************************************************************
       *> setup the environment division 
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
        *> working storage defines variables
        WORKING-STORAGE SECTION.
       *> defines an alphabetic string
       01 USER-INPUT  PIC A(20).
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> print a string
           DISPLAY "Input a text up to 20 characters".
           *> gets the user input
           ACCEPT USER-INPUT.
           *> print the message and the user input
           DISPLAY "The user input is: " USER-INPUT.
           *> stop the program
           STOP RUN.