      * A  B
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PAYROL00.
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
      ***** Variables for the report *****
       77  WHO         PIC X(15).
       77  WHERE       PIC X(20).
       77  WHY         PIC X(30).
       77  RATE        PIC 9(3).
       77  HOURS       PIC 9(3).
       77  GROSS-PAY   PIC 9(5).

       PROCEDURE DIVISION .
      ***** COBOL MOVE statements -- Literal Text to variables
           MOVE "Bobby Brady" TO WHO.
           MOVE "Los Angeles" TO WHERE.
           MOVE "For the Silver Platters."   To WHY.
           MOVE 19 TO HOURS.
           MOVE 23 TO RATE.
      ***** Calculation using COMPUTE  *****
           COMPUTE GROSS-PAY = HOURS * RATE .
      ***** DISPLAY STATEMENTS *****  
           DISPLAY "Name: " WHO.
           DISPLAY "Location: " WHERE.
           DISPLAY "Reason: " WHY.
           DISPLAY "Hours Worked: " HOURS.
           DISPLAY "Hourly Rate: " RATE.
           DISPLAY "Gross Pay: " GROSS-PAY.
           DISPLAY WHY " from " WHO.
           GOBACK.

           
      