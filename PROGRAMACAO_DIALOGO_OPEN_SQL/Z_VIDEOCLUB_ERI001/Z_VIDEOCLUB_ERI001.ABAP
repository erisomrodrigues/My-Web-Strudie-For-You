*&---------------------------------------------------------------------*
*& Report Z_VIDEOCLUB_ERI001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_videoclub_eri001.

INCLUDE z_videoclub_eri001_top.
INCLUDE z_videoclub_eri001_sel.
INCLUDE z_videoclub_eri001_f01.

INITIALIZATION.
  PERFORM inicializar.

START-OF-SELECTION.
*  MESSAGE 'Operacion realizada com exito' TYPE 'S'.

MESSAGE S000(Z_ERI001).


AT SELECTION-SCREEN ON PA_FECHA.
IF PA_FECHA < '20200101'.
  MESSAGE a001(Z_ERI001).
ENDIF.

IF pa_fecha < SY-DATUM.
  MESSAGE e002(Z_ERI001).
ENDIF.

IF pa_fecha > SY-DATUM.
  MESSAGE W003(Z_ERI001).
ENDIF.

AT SELECTION-SCREEN ON PA_EDAD.
  IF PA_EDAD <> 'X'.
    MESSAGE ID 'Z_ERI001' TYPE 'I' NUMBER '004'.
  ENDIF.
