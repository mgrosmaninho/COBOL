       IDENTIFICATION DIVISION.
        PROGRAM-ID. IF-STATEMENT.
        AUTHOR. Manuel Gomes Rosmaninho
        DATE-WRITTEN. 28/06/24.
        DATE-COMPILED. 28/06/24.
      ******************************************************************
      * DESCRIPTION: IF STATEMENT USING A CALCULATOR AS AN EXAMPLE
      * IMPORTANT: NEGATIVE NUMBER NOT HANDLED HERE IN THIS EXAMPLE
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1      PIC 9  VALUE ZEROS.
       01 NUM2      PIC 9  VALUE ZEROS.
       01 RESULT    PIC 99 VALUE ZEROS.
       01 OPERATOR  PIC X  VALUE SPACE.
       PROCEDURE DIVISION.
           DISPLAY "Enter first number (1 digit)" WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number (1 digit)" WITH NO ADVANCING.
           ACCEPT NUM2.
           DISPLAY "Enter operator (+ - * /)" WITH NO ADVANCING.
           ACCEPT OPERATOR.
           IF OPERATOR = "+" THEN
              ADD NUM1 TO NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "-" THEN
              SUBTRACT NUM1 FROM NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "*" THEN
              MULTIPLY NUM1 BY NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "/" THEN
              DIVIDE NUM1 BY NUM2 GIVING RESULT
           END-IF
           DISPLAY "The result is ", RESULT.
           STOP RUN.