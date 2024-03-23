*&---------------------------------------------------------------------*
*& Report z_tab_corres_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_tab_corres_eri001.


TYPES: BEGIN OF GTY_CLIENTES,
       KUNNR TYPE KUNNR,
       NAME1 TYPE name1_gp,
       END OF gty_clientes.

DATA: GT_CLIENTES TYPE TABLE OF gty_clientes,
      GWA_CLIENTES TYPE gty_clientes.

SELECT SINGLE * FROM KNA1
         INTO CORRESPONDING FIELDS OF  gWA_clientes.


cl_demo_output=>display( gWA_clientes ).
