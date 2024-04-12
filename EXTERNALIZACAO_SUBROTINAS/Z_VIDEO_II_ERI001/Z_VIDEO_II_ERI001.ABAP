*&---------------------------------------------------------------------*
*& Report Z_VIDEO_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_video_ii_eri001.

INCLUDE z_video_ii_eri001_top.


START-OF-SELECTION.

  gwa_dni = '111111111A'.

  PERFORM baja_socio(z_videoclub_eri001) USING gwa_dni CHANGING gwa_subrc.

  case gwa_subrc.
WHEN 0.
  WRITE / gwa_dni.
WHEN 4.
  WRITE 'EL DNI NO EXISTE'.
WHEN OTHERS.
  WRITE 'ERRO INESPERADO'.
ENDCASE.
