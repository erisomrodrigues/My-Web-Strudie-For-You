*&---------------------------------------------------------------------*
*& Report z_condense_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_condense_rmr001.

DATA BIENVENIDA TYPE STRING.

BIENVENIDA = '  HOLA  MI NOMBRE  ES  MARIA  '.

WRITE:/ BIENVENIDA.

CONDENSE BIENVENIDA.

WRITE:/ BIENVENIDA.

CONDENSE BIENVENIDA NO-GAPS.

WRITE:/ BIENVENIDA.
