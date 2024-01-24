*&---------------------------------------------------------------------*
*& Report z_prog_string_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_prog_string_rmr001.

DATA GV_CADENA TYPE STRING.

gv_cadena = 'HOLA'.

WRITE gv_cadena.

gv_cadena = 'HOLA BIENVENIDO'.

WRITE GV_CADENA.

DATA GV_HEX TYPE XSTRING.

gv_hex = 'OF'.

WRITE GV_HEX.

WRITE: / 'EL VALOR DE LA VARIABLE XSTRING ES: ', GV_HEX.
