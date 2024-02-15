*&---------------------------------------------------------------------*
*& Report z_shift_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_shift_eri001.

CONSTANTS:
           GC_ENTRADA TYPE STRING VALUE '***123***'.

DATA:
    GV_SALIDA TYPE C LENGTH 9.

WRITE:/ GC_ENTRADA.
ULINE.

GV_SALIDA = gc_entrada.

SHIFT gv_salida BY 1 PLACES LEFT.

WRITE:/ GV_SALIDA.

GV_SALIDA = GC_ENTRADA.

SHIFT GV_SALIDA LEFT DELETING LEADING '***'.

WRITE:/ GV_SALIDA.
SKIP.

GV_SALIDA = gc_entrada.

SHIFT gv_salida BY 1 PLACES RIGHT.

WRITE:/ GV_SALIDA.

GV_SALIDA = GC_ENTRADA.

SHIFT GV_SALIDA RIGHT DELETING TRAILING '***'.

WRITE:/ GV_SALIDA.
