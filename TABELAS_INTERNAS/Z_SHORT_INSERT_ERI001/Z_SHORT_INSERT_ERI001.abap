*&---------------------------------------------------------------------*
*& Report z_short_insert_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_short_insert_eri001.

DATA: GT_BNKA TYPE HASHED TABLE OF BNKA WITH UNIQUE KEY BANKS BANKL,
      GWA_BNKA TYPE BNKA.

      gwa_bnka-banks = 'ES'.
      gwa_bnka-bankl = '1'.
      INSERT gwa_bnka INTO TABLE gt_bnka.

      IF SY-subrc = 0.
        WRITE:/ 'INSERT OK'.
        ELSE.
        WRITE:/ 'INSERT KO'.
      ENDIF.

      gwa_bnka-banks = 'ES'.
      gwa_bnka-bankl = '10'.
      INSERT gwa_bnka INTO TABLE gt_bnka.

      IF SY-subrc <> 0.
        WRITE:/ 'INSERT OK'.
        ELSE.
        WRITE:/ 'INSERT KO'.
      ENDIF.

      gwa_bnka-banks = 'ES'.
      gwa_bnka-bankl = '10'.
      INSERT gwa_bnka INTO TABLE gt_bnka.

      IF SY-subrc <> 0.
        WRITE:/ 'INSERT OK'.
        ELSE.
        WRITE:/ 'INSERT KO'.
      ENDIF.
      
      CL_DEMO_
      
