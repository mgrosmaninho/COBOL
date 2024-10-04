       IDENTIFICATION DIVISION. *> Section for the program’s identification.
        PROGRAM-ID. MULTIPLIER. *> Program name.
        AUTHOR. Manuel Gomes Rosmaninho *> Author name.
        DATE-WRITTEN. 26/06/24. *> Date the program was written.
        DATE-COMPILED. 26/06/24. *> Date the program was compiled.
      
      ******************************************************************
      * DESCRIPTION: PROGRAM TAKE 2 NUMBERS, MULTIPLY THEM, DISPLAY THE RESULT.
      ******************************************************************  
      
       ENVIRONMENT DIVISION. *> Section for the program’s environment.

       DATA DIVISION. *> Section for the program’s data.
       WORKING-STORAGE SECTION. *> Section for the program’s working storage.
       *> Variable to store the 1st number (single-digit integer).
       01 NUM1    PIC 9  VALUE ZEROS.
       *> Variable to store the 2nd number (single-digit integer).
       01 NUM2    PIC 9  VALUE ZEROS.
       *> Variable to store the multiplication result (two-digit integer).     
       01 RESULT  PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION. *> Section for the program’s procedure.
           *> Display message asking for the 1st number
           *> and keep the cursor on the same line.
           DISPLAY "Input first number: " WITH NO ADVANCING.
           *> Accept user input for the 1st number and store it in NUM1.
           ACCEPT NUM1.
           *> Display message asking for the 2nd number
           *> and keep the cursor on the same line.
           DISPLAY "Input second number: " WITH NO ADVANCING.
           *> Accept user input for the 2nd number and store it in NUM2.
           ACCEPT NUM2.
           *> Multiply NUM1 by NUM2 and store the result in RESULT.
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           *> Display the result of the multiplication.
           DISPLAY "The result is: " RESULT.
           STOP RUN. *> End program execution.