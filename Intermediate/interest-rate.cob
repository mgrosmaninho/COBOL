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
       01 PRINCIPAL      PIC 9(5) VALUE ZEROS. *> Principal amount.
       01 TIME-LENGTH    PIC 9(2) VALUE ZEROS. *> Length of time in years.
       01 INTEREST-RATE  PIC 9(3) VALUE ZEROS. *> Annual interest rate.
       01 RESULT         PIC 9(6) VALUE ZEROS. *> Calculated interest.

       PROCEDURE DIVISION.
           *> Prompt user for input
           DISPLAY "Enter the principal amount (e.g., 1000): "
              WITH NO ADVANCING.
           ACCEPT PRINCIPAL.

           DISPLAY "Enter the length of time (in years): "
              WITH NO ADVANCING.
           ACCEPT TIME-LENGTH.

           DISPLAY "Enter the annual interest rate (as a percentage): "
              WITH NO ADVANCING.
           ACCEPT INTEREST-RATE.

           *> Validate inputs
           IF PRINCIPAL < 0 OR TIME-LENGTH < 0 OR INTEREST-RATE < 0 THEN
              DISPLAY "Error: All inputs must be non-negative."
              STOP RUN
           END-IF

           *> Calculate interest
           COMPUTE RESULT =
              (PRINCIPAL * TIME-LENGTH * INTEREST-RATE) / 100.

           *> Display the result with formatting
           DISPLAY "The calculated interest is: " RESULT.

           STOP RUN.