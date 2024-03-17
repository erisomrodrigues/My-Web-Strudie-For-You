*&---------------------------------------------------------------------*
*& Report Z_STANDARD_ERI00D
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_STANDARD_ERI00D.

DATA: GT_MARA TYPE TABLE OF MARA,
      GWA_MARA TYPE MARA.

GWA_MARA-matnr = '1111'.
GWA_MARA-ersda = '20201231'.
APPEND gwa_mara TO gt_mara.

WRITE:/ 'FIN'.
