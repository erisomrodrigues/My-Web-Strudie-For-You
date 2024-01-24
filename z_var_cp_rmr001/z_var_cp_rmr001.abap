*&---------------------------------------------------------------------*
*& Report z_var_cp_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_var_cp_rmr001.

* Declaracion de variables de tipo c
DATA: NOMBRE TYPE C LENGTH 35,
      APELIDO(35) TYPE C.


NOMBRE = 'JUAN'.
APELIDO = 'RUIZ'.

WRITE: NOMBRE, '' , APELIDO.

* Declaracion de variavles de tipo P
DATA SUELO TYPE P LENGTH 10 DECIMALS 2.

SUELO = '100.50'.

WRITE / SUELO.
