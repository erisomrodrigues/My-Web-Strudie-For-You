*&---------------------------------------------------------------------*
*& Report z_add_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_add_rmr001.

DATA: GV_COMPRA TYPE I,
      GV_GASTOS TYPE I.

GV_COMPRA = 10.

WRITE:/ GV_COMPRA,
        GV_GASTOS.

SKIP.

ULINE.

ADD GV_COMPRA TO GV_GASTOS.

WRITE:/ GV_COMPRA,
        GV_GASTOS.

SKIP.

ULINE.

GV_GASTOS = GV_COMPRA + GV_GASTOS.

WRITE:/ GV_COMPRA,
        GV_GASTOS.
