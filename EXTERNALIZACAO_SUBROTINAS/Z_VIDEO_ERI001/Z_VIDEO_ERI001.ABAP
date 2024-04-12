*&---------------------------------------------------------------------*
*& Report Z_VIDEO_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_VIDEO_ERI001.

INCLUDE Z_VIDEO_ERI001_TOP.

START-OF-SELECTION.

GWA_DNI = '111111111A'.

PERFORM SELECT_ZSOCIOS IN PROGRAM Z_VIDEOCLUB_ERI001
                       USING GWA_DNI
                       CHANGING GWA_DATOS
                                GWA_SUBRC.


CASE GWA_SUBRC.
  WHEN 0.
  WRITE / GWA_DATOS-ape.
  WRITE / GWA_DATOS-nom.
  WRITE / GWA_DATOS-edad.
  WRITE / GWA_DATOS-fecha.

  WHEN 4.
    WRITE 'EL DNI NO EXISTE'.
  WHEN OTHERS.
    WRITE 'ERRO INESPERADO'.
ENDCASE.
