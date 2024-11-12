*&---------------------------------------------------------------------*
*& Report YGCB_006_05
*&---------------------------------------------------------------------*
*& FIELD-SYMBOLS com LOOP
*&---------------------------------------------------------------------*
REPORT YGCB_006_05.

DATA: lt_scarr TYPE STANDARD TABLE OF scarr,
      ls_scarr TYPE scarr.

FIELD-SYMBOLS: <ls_scarr> TYPE scarr.

SELECT *
  FROM scarr
  INTO TABLE lt_scarr.

LOOP AT lt_scarr ASSIGNING <ls_scarr>.
  WRITE: / <ls_scarr>-carrname.
ENDLOOP.