*&---------------------------------------------------------------------*
*& Report z_compute_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_compute_rmr001.

DATA: GV_RESULTADO TYPE I,
      GV_NUMERO1   TYPE I,
      GV_NUMERO2   TYPE I.

gv_numero1 = 2.
gv_numero2 = 5.

CONSTANTS GC_MENSAJE TYPE STRING VALUE 'EL RESULTADO ES: '.

COMPUTE gv_resultado = gv_numero1 * gv_numero2.

WRITE:/ gc_mensaje, gv_resultado.
