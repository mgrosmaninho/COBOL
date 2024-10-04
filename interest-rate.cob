       IDENTIFICATION DIVISION.
        PROGRAM-ID. INTEREST-RATE.
        AUTHOR. Manuel Gomes Rosmaninho.
        DATE-WRITTEN. 24/06/24.
        DATE-COMPILED. 24/06/24.
      ****************************************************************
      * DESCRIPTION: CALCULATES THE RATE OF INTEREST
      ****************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 PRINCIPAL  PIC 9(2).
       77 LENGHT     PIC 9(2).
       77 RATE       PIC 9(2).
       77 RESULT     PIC 9(4).
       PROCEDURE DIVISION.
           ACCEPT PRINCIPAL.
           ACCEPT LENGHT.
           ACCEPT RATE.
           COMPUTE RESULT =(PRINCIPAL * LENGHT * RATE) / 100.
           DISPLAY "The rate of interest is " RESULT.
           STOP RUN.