       IDENTIFICATION DIVISION. *> Section for the program’s identification.
        PROGRAM-ID. STUDENT-RECORD. *> Program name.
        AUTHOR. Manuel Gomes Rosmaninho *> Author name.
        DATE-WRITTEN. 26/06/24. *> Date the program was written.
        DATE-COMPILED. 26/06/24. *> Date the program was compiled.

      *********************************************************
      * DESCRIPTION: PROGRAM TO INPUT STUDENT DETAILS AND DISPLAY THEM.
      * DETAILS INCLUDE: ID, FORENAME, SURNAME, GENDER, COURSE.
      *********************************************************

       ENVIRONMENT DIVISION. *> Section for the program’s environment.
       
       DATA DIVISION. *> Section for the program’s data.
       WORKING-STORAGE SECTION. *> Section for the program’s working storage.
       *> Declare the STUDENT-DETAILS structure to hold all student information.
       01 STUDENT-DETAILS.
          *> Define the student ID as a 6-digit number.
          05 STUDENT-ID        PIC 9(6).
          *> Define the student's full name (forename and surname).
          05 STUDENT-FULLNAME.
             10 FORENAME       PIC X(10). *> Forename with up to 10 characters.
             10 SURNAME        PIC X(10). *> Surname with up to 10 characters.
          *> Define the student's gender (1 character).
          05 GENDER            PIC X. *> Single character for gender.
          *> Define the course code as a 4-character alphanumeric string.
          05 COURSE-CODE       PIC X(4). *> Course code with up to 4 characters.
       
       PROCEDURE DIVISION. *> Section for the program’s procedure.
           *> Display a prompt and accept the student ID input.
           DISPLAY "Input student id: " WITH NO ADVANCING.
           ACCEPT STUDENT-ID.
           *> Display a prompt and accept the student's forename.
           DISPLAY "Input student forename: " WITH NO ADVANCING.
           ACCEPT FORENAME.
           *> Display a prompt and accept the student's surname.
           DISPLAY "Input student surname: " WITH NO ADVANCING.
           ACCEPT SURNAME.
           *> Display a prompt and accept the student's gender.
           DISPLAY "Input student gender: " WITH NO ADVANCING.
           ACCEPT GENDER.
           *> Display a prompt and accept the student's course code.
           DISPLAY "Input student couse: " WITH NO ADVANCING.
           ACCEPT COURSE-CODE.
           *> Display the entered student ID.
           DISPLAY "Student ID: " STUDENT-ID.
           *> Display the entered student's full name (forename and surname).
           DISPLAY "Student full name is: " FORENAME " " SURNAME.
           *> Display the entered student's gender.
           DISPLAY "Student gender is: " GENDER.
           *> Display the entered student's course code.
           DISPLAY "Student course is: " COURSE-CODE.
           STOP RUN. *> End the program execution.