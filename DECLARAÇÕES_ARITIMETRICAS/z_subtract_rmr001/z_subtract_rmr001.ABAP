*&---------------------------------------------------------------------*
*& Report z_subtract_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_subtract_rmr001.

DATA: GV_COMPRA TYPE I,
      GV_SALDO  TYPE I.

GV_COMPRA = 10.
GV_SALDO  = 1000.

SUBTRACT GV_COMPRA FROM GV_SALDO.

WRITE:/ 'LA COMPRA ES DE: ', GV_COMPRA,
      /  'EL SALDO ES DE: ', GV_SALDO.

SKIP.
ULINE.

GV_SALDO = GV_SALDO - 90.

WRITE: GV_SALDO.
