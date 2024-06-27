       *> setup the identification division
       IDENTIFICATION DIVISION.
        *> setup the program id
        PROGRAM-ID. CURRENT-DATE-AND-TIME.
        *> setup the author
        AUTHOR. Manuel Gomes Rosmaninho
        *> setup the date written
        DATE-WRITTEN. 26/06/24.
        *> setup the date compiled
        DATE-COMPILED. 26/06/24.
      *******************************************************
      * DESCRIPTION: GET CURRENT DATE AND TIME AND DISPLAY
      *******************************************************
       *> setup the environment division
       ENVIRONMENT DIVISION.
       *> setup the data division
       DATA DIVISION.
       *> working storage defines variables
       WORKING-STORAGE SECTION.
       *> defines the current date
       01 CURRENT-DATE.
          02 CURRENT-YEAR    PIC 9999.
          02 CURRENT-MONTH   PIC 99.
          02 CURRENT-DAY     PIC 99.
       *> defines the current time
       01 CURRENT-TIME.
          02 CURRENT-HOUR    PIC 99.
          02 CURRENT-MINUTE  PIC 99.
       *> setup the procedure division
       PROCEDURE DIVISION.
           *> gets the date from the system (year, month and day)
           *> and store in the variables using the format YYYYMMDD
           ACCEPT CURRENT-DATE FROM DATE YYYYMMDD.
           *> gets the time form the system (hour and minute)
           *> and store in the variable using the format HHMM
           ACCEPT CURRENT-TIME FROM TIME.
           *> print the current date in the format DD/MM/YYYY
           DISPLAY "The date is "
                   CURRENT-DAY
                   "/"
                   CURRENT-MONTH
                   "/"
                   CURRENT-YEAR.
           *> print the time in the format HH:MM
           DISPLAY "The time is " CURRENT-HOUR ":" CURRENT-MINUTE.
           *> stop the program
           STOP RUN.