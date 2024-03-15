*&---------------------------------------------------------------------*
*& Report z_if_ELSE_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_if_eri001.

PARAMETERS: GP_EDAD TYPE N LENGTH 3.

constants: GC_MAYOR TYPE STRING VALUE 'ERES MAYOR DE EDAD',
           GC_MENOR TYPE STRING VALUE 'ERES MENOR DE EDAD'.

IF gp_edad >= 18.
    WRITE:/ gc_mayor.

ELSE.

WRITE:/ gc_menor.

ENDIF.
