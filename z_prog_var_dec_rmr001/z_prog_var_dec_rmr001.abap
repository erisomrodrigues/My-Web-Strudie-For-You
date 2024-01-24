*&---------------------------------------------------------------------*
*& Report z_prog_var_dec_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_prog_var_dec_rmr001.

DATA: GV_DECFLOAT16 TYPE DECFLOAT16,
      GV_DECFLOAT34  TYPE DECFLOAT34.

GV_DECFLOAT16 = '5.5'.

WRITE / gv_decfloat16.

gv_decfloat34 = '5.5'.

WRITE / gv_decfloat34.

CLEAR gv_decfloat34.

WRITE / gv_decfloat34.
