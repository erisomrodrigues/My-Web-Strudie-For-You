*&---------------------------------------------------------------------*
*& Report Z_VIDEOCLUB_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_videoclub_delete_eri001.

INCLUDE Z_VIDEOCLUB_DELETE_ERI001_TOP.
INCLUDE Z_VIDEOCLUB_DELTE_ERI001_SEL.
INCLUDE Z_VIDEOCLUB_DELETE_ERI001_F01.

INITIALIZATION.
  PERFORM inicializar.

AT SELECTION-SCREEN ON PA_FECHA.
IF PA_FECHA < '20200101'.
  MESSAGE a001(Z_ERI001).
ENDIF.

*IF pa_fecha < SY-DATUM.
*  MESSAGE e002(Z_ERI001).
*ENDIF.

IF pa_fecha > SY-DATUM.
  MESSAGE W003(Z_ERI001).
ENDIF.

AT SELECTION-SCREEN ON PA_EDAD.
  IF PA_EDAD <> 'X'.
    MESSAGE ID 'Z_ERI001' TYPE 'I' NUMBER '004'.
  ENDIF.

  START-OF-SELECTION.

CASE abap_true.
  WHEN PA_ALTA.
    PERFORM ALTA_SOCIO.
  WHEN PA_BAJA.
    PERFORM BAJA_SOCIO.
*	WHEN OTHERS.
ENDCASE.
