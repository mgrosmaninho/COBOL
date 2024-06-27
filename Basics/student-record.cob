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
      * DETAILS: NAME, SURNAME, GENDER, COURSE
      *********************************************************
       *> setup the environment division
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
       *> working storage defines variables
       WORKING-STORAGE SECTION.
       01 STUDENT-DETAILS.
          02 STUDENT-ID        PIC 9(6).
          02 STUDENT-FULLNAME.
             03 FORENAME       PIC X(10).
             03 SURNAME        PIC X(10).
          02 GENDER            PIC X.
          02 COURSE-CODE       PIC X(4).
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> print a string
           DISPLAY "Input student id: " WITH NO ADVANCING.
           ACCEPT STUDENT-ID.
           DISPLAY "Input student name: " WITH NO ADVANCING.
           ACCEPT STUDENT-FULLNAME.
           DISPLAY "Student ID: " STUDENT-ID.
           DISPLAY "Student fullname is: " FORENAME.
           STOP RUN.