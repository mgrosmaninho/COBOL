       *> setup the identification division
       IDENTIFICATION DIVISION.
        *> setup the program id
        PROGRAM-ID. MULTIPLIER.
        *> setup the author
        AUTHOR. Manuel Gomes Rosmaninho
        *> setup the date written
        DATE-WRITTEN. 26/06/24.
        *> setup the date compiled
        DATE-COMPILED. 26/06/24.
      ******************************************************************
      * DESCRIPTION: TAKE 2 NUMBERS, MULTIPLY AND DISPLAY.
      ******************************************************************
       *> setup the environment division
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
       *> working storage defines variables
       WORKING-STORAGE SECTION.
       *> define 2 variables type number with 1 space
       *> asserting 0 to the value
       01 NUM1 PIC 9 VALUE ZEROS.
       01 NUM2 PIC 9 VALUE ZEROS.
       *> defines variable type number with 2 spaces
       *> asserting 0 to the value
       01 RESULT PIC 99 VALUE ZEROS.
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> print a string asking for the input
           *> keep the cursor in the same line as the message
           DISPLAY "Input first number: " WITH NO ADVANCING.
           *> gets the user input
           ACCEPT NUM1.
           *> print a string asking for the input
           *> keep the cursor in the same line as the message
           DISPLAY "Input second number: " WITH NO ADVANCING.
           *> gets the user input
           ACCEPT NUM2.
           *> multiply num1 by num2 and store in result
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           *> print message followed by the result
           DISPLAY "The result is: " RESULT.
           *> stop the program
           STOP RUN.