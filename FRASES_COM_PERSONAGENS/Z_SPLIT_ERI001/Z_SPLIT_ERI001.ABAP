*&---------------------------------------------------------------------*
*& Report z_split_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_split_eri001.

CONSTANTS GV_DATOS TYPE STRING VALUE 'HOLA, MI NOMBRE ES LAURA'.

DATA: GV_DATOS1 TYPE STRING,
      GV_DATOS2 TYPE STRING.

WRITE:/ GV_DATOS.
ULINE.

SPLIT GV_DATOS AT ',' INTO GV_DATOS1 GV_DATOS2.

WRITE:/ GV_DATOS1,
      / GV_DATOS2.
