*----------------------------------------------------------------------*
***INCLUDE Z_VIDEOCLUB_ERI001_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form INICIALIZAR
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM inicializar .
  pa_fecha = sy-datum.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form ALTA_SOCIO
*&---------------------------------------------------------------------*
*& Alta de socios nuevos
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM alta_socio .
  IF pa_dni = ''.
    PERFORM dni_vazio.
  ELSE.
    gwa_socios-dni = pa_dni.
    gwa_socios-nom = pa_nom.
    gwa_socios-ape = pa_ape.
    gwa_socios-edad = pa_edad.
    gwa_socios-fecha = pa_fecha.

    INSERT zsocios_eri001 FROM gwa_socios.

    IF sy-subrc = 0.
      MESSAGE i006(z_eri001).
    ELSE.
      MESSAGE i007(z_eri001).
    ENDIF.
  ENDIF.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form BAJA_SOCIO
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM baja_socio.
  IF pa_dni = ''.
    PERFORM dni_vazio.
  ELSE.
    gwa_socios-dni = pa_dni.

    DELETE zsocios_eri001 FROM gwa_socios.

    CASE sy-subrc.
      WHEN 0.
        MESSAGE i008(z_eri001).
      WHEN 4.
        MESSAGE i009(z_eri001).
      WHEN OTHERS.
        MESSAGE i010(z_eri001).
    ENDCASE.
  ENDIF.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form DNI_VAZIO
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM dni_vazio.
  MESSAGE i005(z_eri001).
ENDFORM.
*&---------------------------------------------------------------------*
*& Form CONSULTA_SOCIO
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM consulta_socio.
  IF pa_dni = ''.
    PERFORM dni_vazio.
  ELSE.
    SELECT SINGLE * FROM zsocios_eri001
                    INTO gwa_socios
                    WHERE dni = pa_dni.

    CASE sy-subrc.
      WHEN 0.
        pa_nom = gwa_socios-nom.
        pa_ape = gwa_socios-ape.
        pa_edad = gwa_socios-edad.
        pa_fecha = gwa_socios-fecha.

        CALL SELECTION-SCREEN 1000.
      WHEN 4.
        MESSAGE i011(z_eri001).
      WHEN OTHERS.
        MESSAGE i012(z_eri001).
    ENDCASE.
  ENDIF.



ENDFORM.
