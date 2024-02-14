*&---------------------------------------------------------------------*
*& Report zsearch_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsearch_eri001.

DATA: gv_cadena   TYPE string VALUE 'UNO DOS TRES CUATRO',
      gv_posicion TYPE i.

SEARCH gv_cadena FOR 'DOS'.

gv_posicion = sy-fdpos + 1.

WRITE:/ 'EL VALOR DE SY-FDPOS ES:', sy-fdpos,
      / 'LA POSITION ES: ', gv_posicion.
