       IDENTIFICATION DIVISION. *> Section for the program’s identification.
        PROGRAM-ID. CURRENT-DATE-AND-TIME. *> Program name.
        AUTHOR. Manuel Gomes Rosmaninho *> Author name.
        DATE-WRITTEN. 26/06/24. *> Date the program was written.
        DATE-COMPILED. 26/06/24. *> Date the program was compiled.

      *******************************************************
      * DESCRIPTION: PROGRAM TO GET CURRENT DATE AND TIME, THEN DISPLAY THEM.
      *******************************************************  
      
       ENVIRONMENT DIVISION. *> Section for the program’s environment.

       DATA DIVISION. *> Section for the program’s data.
       WORKING-STORAGE SECTION. *> Section for the program’s working storage.
       *> Define a variable for the current date composed of year, month, day.
       01 CURRENT-DATE.
          02 CURRENT-YEAR    PIC 9999. *> 4 digits for the year (YYYY).
          02 CURRENT-MONTH   PIC 99.   *> 2 digits for the month (MM).
          02 CURRENT-DAY     PIC 99.   *> 2 digits for the day (DD).
       *> Define a variable for the current time composed of hour and minute.
       01 CURRENT-TIME.
          02 CURRENT-HOUR    PIC 99.   *> 2 digits for the hour (HH).
          02 CURRENT-MINUTE  PIC 99.   *> 2 digits for the minute (MM).
       
       PROCEDURE DIVISION. *> Section for the program’s procedure.
           *> Get the current date from the system in the format YYYYMMDD.
           ACCEPT CURRENT-DATE FROM DATE YYYYMMDD.
           *> Get the current time from the system in the format HHMM.
           ACCEPT CURRENT-TIME FROM TIME.
           *> Display the current date in the format DD/MM/YYYY
           DISPLAY "The date is "
                   CURRENT-DAY
                   "/"
                   CURRENT-MONTH
                   "/"
                   CURRENT-YEAR.
           *> Display the current time in the format HH:MM.
           DISPLAY "The time is " CURRENT-HOUR ":" CURRENT-MINUTE.
           STOP RUN. *> End program execution.