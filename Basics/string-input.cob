       IDENTIFICATION DIVISION. *> Section for the program’s identification.
        PROGRAM-ID. STRING-INPUT. *> Program name.
        AUTHOR. Manuel Gomes Rosmaninho. *> Author name.
        DATE-WRITTEN. 24/06/24. *> Date the program was written.
        DATE-COMPILED. 24/06/24. *> Date the program was compiled.

      ****************************************************************
      * DESCRIPTION: PROGRAM TO TAKE STRING INPUT AND DISPLAY IT.
      ****************************************************************
      
       ENVIRONMENT DIVISION. *> Section for the program’s environment.

       DATA DIVISION. *> Section for the program’s data.
        WORKING-STORAGE SECTION. *> Section for the program’s variables.
       01 USER-INPUT  PIC A(20). *> Variable to store the user input.
       
       PROCEDURE DIVISION. *> Section for the program’s logic.
           DISPLAY "Input a text up to 20 characters". *> Display the message.
           ACCEPT USER-INPUT. *> Accept the user input.
           DISPLAY "The user input is: " USER-INPUT. *> Display the user input.
           STOP RUN. *> End program execution.