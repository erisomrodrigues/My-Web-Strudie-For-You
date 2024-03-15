*&---------------------------------------------------------------------*
*& Report z_if_ENDIF_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_if_eri001.

PARAMETERS: GP_EDAD TYPE N LENGTH 3.

constants: GC_MAYOR TYPE STRING VALUE 'ERES MAYOR DE EDAD',
           GC_MENOR TYPE STRING VALUE 'ERES MENOR DE EDAD',
           GC_INSU  TYPE STRING VALUE 'EDAD INSUFICIENTE'.

IF gp_edad >= 18.
    WRITE:/ gc_mayor.

ELSE.
    IF gp_edad >= 16.
        WRITE:/ gc_insu.

        ELSE.
WRITE:/ gc_menor.
ENDIF.
ENDIF.
