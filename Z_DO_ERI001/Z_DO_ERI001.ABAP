*&---------------------------------------------------------------------*
*& Report z_do_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_do_eri001.

DATA: GV_NUMERO TYPE N LENGTH 2,
      GV_RESULTADO  TYPE N LENGTH 2.

DO 10 TIMES.

    ADD 1 TO GV_NUMERO.

    gv_resultado = 1 * gv_numero.

    WRITE:/ '1 X ', gv_numero, ':', gv_resultado.

ENDDO.
