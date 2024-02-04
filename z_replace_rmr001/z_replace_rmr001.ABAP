*&---------------------------------------------------------------------*
*& Report z_replace_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_replace_rmr001.

PARAMETERS GP_DATOS TYPE STRING.

REPLACE 'A' WITH '@' INTO GP_DATOS.

WRITE:/ GP_DATOS.

ULINE.

REPLACE ALL OCCURRENCES OF 'A' IN gp_datos WITH '@'.

WRITE:/ GP_DATOS.
