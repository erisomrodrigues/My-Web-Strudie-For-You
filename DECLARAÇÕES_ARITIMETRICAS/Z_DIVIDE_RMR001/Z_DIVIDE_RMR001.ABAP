*&---------------------------------------------------------------------*
*& Report z_divide_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_divide_rmr001.

DATA: GV_TARTAS TYPE P LENGTH 10 DECIMALS 2,
      GV_INVITADOS  TYPE I.


      gv_tartas = 10.
      gv_invitados = 3.

      WRITE: / 'LA TARTAS ES: ', gv_tartas,
            / 'LOS INVITADOS SON: ', gv_invitados.

      SKIP.
      ULINE 10(50).
      SKIP.

      DIVIDE gv_tartas BY gv_invitados.
      WRITE gv_invitados.

      SKIP.
      ULINE 10(50).
      SKIP.

      gv_tartas = gv_tartas / gv_invitados.
     WRITE:/ gv_tartas.
