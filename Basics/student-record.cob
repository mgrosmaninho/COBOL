       *> setup the identification division
       IDENTIFICATION DIVISION.
        *> setup the program id
        PROGRAM-ID. STUDENT-RECORD.
        *> setup the author
        AUTHOR. Manuel Gomes Rosmaninho
        *> setup the date written
        DATE-WRITTEN. 26/06/24.
        *> setup the date compiled
        DATE-COMPILED. 26/06/24.
      *********************************************************
      * DESCRIPTION: TAKES A STUDENT DETAILS AND DISPLAY
      * DETAILS: ID, NAME, SURNAME, GENDER, COURSE
      *********************************************************
       *> setup the environment division
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
       *> working storage defines variables
       WORKING-STORAGE SECTION.
       01 STUDENT-DETAILS.
          05 STUDENT-ID        PIC 9(6).
          05 STUDENT-FULLNAME.
             10 FORENAME       PIC X(10).
             10 SURNAME        PIC X(10).
          05 GENDER            PIC X.
          05 COURSE-CODE       PIC X(4).
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> print a string and get the student ID
           DISPLAY "Input student id: " WITH NO ADVANCING.
           ACCEPT STUDENT-ID.
           *> print a string and get the student forename
           DISPLAY "Input student forename: " WITH NO ADVANCING.
           ACCEPT FORENAME.
           *> print a string and get the student surname
           DISPLAY "Input student surname: " WITH NO ADVANCING.
           ACCEPT SURNAME.
           *> print a string and get the student gender
           DISPLAY "Input student gender: " WITH NO ADVANCING.
           ACCEPT GENDER.
           *> print a string and get the student course
           DISPLAY "Input student couse: " WITH NO ADVANCING.
           ACCEPT COURSE-CODE.
           *> print student ID
           DISPLAY "Student ID: " STUDENT-ID.
           *> print student full name
           DISPLAY "Student fullname is: " STUDENT-FULLNAME.
           *> print student gender
           DISPLAY "Student gender is: " GENDER.
           *> print student course
           DISPLAY "Student course is: " COURSE-CODE.
           STOP RUN.