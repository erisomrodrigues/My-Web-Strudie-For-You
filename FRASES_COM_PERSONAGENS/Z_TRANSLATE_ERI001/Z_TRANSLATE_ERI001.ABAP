*&---------------------------------------------------------------------*
*& Report z_translate_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_translate_eri001.

CONSTANTS GC_CADENA TYPE STRING VALUE 'MI NOMBRE ES juan'.

DATA: GV_DATOS  TYPE STRING,
      GV_NOMBRE TYPE STRING.

GV_DATOS = gc_cadena+0(12).
WRITE:/ gv_datos.


gv_nombre = gc_cadena+13(4).
WRITE:/ GV_NOMBRE.

TRANSLATE GV_DATOS TO LOWER CASE.
TRANSLATE GV_NOMBRE TO UPPER CASE.

WRITE:/ GV_DATOS, GV_NOMBRE.
