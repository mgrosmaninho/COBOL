       IDENTIFICATION DIVISION. 
       PROGRAM-ID. IF-STATEMENT-CALCULATOR.
       AUTHOR. Manuel Gomes Rosmaninho.
       DATE-WRITTEN. 28/06/2024.
       DATE-COMPILED. 28/06/2024.

      ******************************************************************
      * DESCRIPTION: SIMPLE CALCULATOR USING IF STATEMENTS.
      *              ALLOWS BASIC OPERATIONS: ADD, SUBTRACT, MULTIPLY, DIVIDE.
      * NOTE: THIS EXAMPLE DOES NOT HANDLE NEGATIVE NUMBERS OR DECIMALS.
      ******************************************************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       *> Declare variables for the two numbers, result, and operator.
       01 NUM1      PIC 9  VALUE ZEROS. *> First input number (1 digit).
       01 NUM2      PIC 9  VALUE ZEROS. *> Second input number (1 digit).
       01 RESULT    PIC 99 VALUE ZEROS. *> Result of the operation.
       01 OPERATOR  PIC X  VALUE SPACE. *> Operator (+ - * /).

       PROCEDURE DIVISION.
           *> Prompt for the first number input.
           DISPLAY "Enter first number (1 digit): " WITH NO ADVANCING.
           ACCEPT NUM1.

           *> Prompt for the second number input.
           DISPLAY "Enter second number (1 digit): " WITH NO ADVANCING.
           ACCEPT NUM2.

           *> Prompt for the operator input (+, -, *, /).
           DISPLAY "Enter operator (+, -, *, /): " WITH NO ADVANCING.
           ACCEPT OPERATOR.

           *> Handle invalid operator input.
           IF OPERATOR NOT = "+" AND OPERATOR NOT = "-" AND
              OPERATOR NOT = "*" AND OPERATOR NOT = "/" THEN
              DISPLAY
                 "Invalid operator. Please use +, -, *, or /."
              STOP RUN
           END-IF

           *> Check the operator and perform the corresponding calculation.
           IF OPERATOR = "+" THEN
              ADD NUM1 TO NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "-" THEN
              SUBTRACT NUM2 FROM NUM1 GIVING RESULT
           END-IF
           IF OPERATOR = "*" THEN
              MULTIPLY NUM1 BY NUM2 GIVING RESULT
           END-IF
           IF OPERATOR = "/" THEN
              IF NUM2 = 0 THEN
                 DISPLAY
                    "Error: Division by zero is not allowed."
              ELSE
                 DIVIDE NUM1 BY NUM2 GIVING RESULT
              END-IF
           END-IF

           *> Display the result only if a valid operation was performed.
           DISPLAY "The result is: ", RESULT.

           STOP RUN. *> End the program.