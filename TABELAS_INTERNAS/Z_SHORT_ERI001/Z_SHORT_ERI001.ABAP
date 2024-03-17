*&---------------------------------------------------------------------*
*& Report Z_SHORT_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_SHORT_ERI001.

DATA: GT_BNKA TYPE SORTED TABLE OF BNKA WITH UNIQUE KEY BANKS BANKL,
      GWA_BNKA TYPE BNKA.

gwa_bnka-banks = 'ES'.
gwa_bnka-bankL = '10'.
INSERT gwa_bnka INTO TABLE gt_bnka.

gwa_bnka-banks = 'ES'.
gwa_bnka-bankL = '1'.
INSERT gwa_bnka INTO TABLE gt_bnka.

gwa_bnka-banks = 'ES'.
gwa_bnka-bankL = '10'.
INSERT gwa_bnka INTO TABLE gt_bnka.

cl_demo_output=>display( gt_bnka ).
