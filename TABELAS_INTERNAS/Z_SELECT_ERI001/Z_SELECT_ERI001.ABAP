*&---------------------------------------------------------------------*
*& Report z_select_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_select_eri001.

DATA: GT_KNA1 TYPE TABLE OF KNA1,
      GWA_KNA1 TYPE KNA1.


SELECT * FROM KNA1
         INTO TABLE gt_kna1
         WHERE land1 = 'ES'
         AND ort01 = 'MANDT'.

SELECT * FROM KNA1
         APPENDING TABLE GT_KNA1
         WHERE land1 = 'ES'
         AND ort01 = 'MANDT'.

SELECT SINGLE * FROM KNA1
         INTO gwa_kna1
         WHERE LAND1 = 'ES'
         AND ort01 = 'MANDT'.

CL_DEMO_OUTPUT=>display( gwa_kna1 ).
