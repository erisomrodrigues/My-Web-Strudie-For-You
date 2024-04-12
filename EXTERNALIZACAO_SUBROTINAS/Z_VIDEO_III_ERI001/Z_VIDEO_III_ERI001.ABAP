*&---------------------------------------------------------------------*
*& Report Z_VIDEO_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_video_iii_eri001.

INCLUDE z_video_iii_eri001_top.

START-OF-SELECTION.

  DATA: lt_socios  TYPE STANDARD TABLE OF zsocios_eri001,
        lt_subrc   TYPE sy-subrc,
        gwa_socios TYPE zsocios_eri001.

  PERFORM listar_socios2 IN PROGRAM z_videoclub_eri001
                         TABLES lt_socios CHANGING lt_subrc.

  CASE lt_subrc.
    WHEN 0.
      LOOP AT lt_socios INTO gwa_socios.
        WRITE:/ 'DNI: ', gwa_socios-dni, 'NOMBRE: ', gwa_socios-nom.
      ENDLOOP.


    WHEN 4.
      WRITE 'EL DNI NO EXISTE'.
    WHEN OTHERS.
      WRITE 'ERRO INESPERADO'.
  ENDCASE.
