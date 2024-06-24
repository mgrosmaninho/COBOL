       IDENTIFICATION DIVISION. 
        PROGRAM-ID. STRING-INPUT.
        AUTHOR. Manuel Gomes Rosmaninho.
        DATE-WRITTEN. 24/05/24.
        DATE-COMPILED. 24/05/24.
      ****************************************************************
      * DESCRIPTION: TAKE STRING INPUT AND DISPLAY.
      ****************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
        WORKING-STORAGE SECTION.
       77 USER-INPUT  PIC A(20).
       PROCEDURE DIVISION.
           ACCEPT USER-INPUT.
           DISPLAY "The user input is: " USER-INPUT.
           STOP RUN.