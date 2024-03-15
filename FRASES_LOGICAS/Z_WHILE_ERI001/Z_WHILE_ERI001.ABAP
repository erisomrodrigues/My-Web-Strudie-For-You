*&---------------------------------------------------------------------*
*& Report z_while_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_while_eri001.

DATA: GV_NUMERO TYPE N LENGTH 2,
      GV_RESULTADO  TYPE N LENGTH 2.

WHILE gv_numero < 10.

    GV_NUMERO = GV_NUMERO + 1.

    gv_resultado = 2 * gv_numero.

WRITE:/ '2 x ', gv_numero, ':', gv_resultado.

ENDWHILE.
