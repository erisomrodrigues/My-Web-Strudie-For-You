*&---------------------------------------------------------------------*
*& Report z_sqrt_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_sqrt_rmr001.

DATA GV_RAIZ TYPE I.

CONSTANTS GC_VALOR TYPE STRING VALUE 'LA RAIZ ES: '.

gv_raiz = SQRT( 16 ).

WRITE:/ gc_valor, gv_raiz.
