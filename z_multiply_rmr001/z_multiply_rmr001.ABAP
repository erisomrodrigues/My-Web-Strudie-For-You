*&---------------------------------------------------------------------*
*& Report z_multiply_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_multiply_rmr001.

DATA: GV_SUELDO TYPE I,
      GV_TRABAJADORES TYPE I.

gv_sueldo = 1000.
gv_trabajadores = 10.

WRITE:/ 'EL SUELDO ES: ', gv_sueldo,
      / 'LOS TRABAJADORES', gv_trabajadores.

 SKIP.
 ULINE 5(25).
 SKIP.

MULTIPLY gv_sueldo BY gv_trabajadores.

WRITE gv_sueldo.

gv_sueldo = gv_sueldo * gv_trabajadores.

WRITE gv_sueldo.
