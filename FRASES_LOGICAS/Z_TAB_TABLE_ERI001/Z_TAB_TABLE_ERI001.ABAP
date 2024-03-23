*&---------------------------------------------------------------------*
*& Report z_tab_table_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_tab_table_eri001.

TYPES: BEGIN OF gty_clientes,
         num_cliente TYPE i,
         name1       TYPE name1_gp,
         land1       TYPE land1,
       END OF gty_clientes.

DATA: gt_kna1      TYPE TABLE OF kna1,
      gty_clientes TYPE gty_clientes.

DATA: gwa_kna1     TYPE kna1,
      gwa_clientes TYPE gty_clientes.

DATA: gt_clientes TYPE TABLE OF gty_clientes.

DATA: gv_num_cliente TYPE i.

CONSTANTS: gc_select_ko TYPE string VALUE 'SELECT KO',
           gc_append_ko TYPE string VALUE 'APPEND KO',
           gc_loop_ko   TYPE string VALUE 'LOOP AT KO'.

SELECT * FROM kna1
         INTO TABLE gt_kna1.

IF sy-subrc <> 0.
  WRITE:/ gc_select_ko.
ELSE.
  LOOP AT gt_kna1 INTO gwa_kna1
    WHERE land1 <> 'DE'.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
    gwa_clientes-name1 = gwa_kna1-name1.
    gwa_clientes-land1 = gwa_kna1-land1.
    APPEND gwa_clientes TO gt_clientes.

    IF sy-subrc NE 0.
      WRITE:/ gc_append_ko.
    ENDIF.
  ENDLOOP.

  IF sy-subrc NE 0.
    WRITE:/ gc_loop_ko.
  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.
ENDIF.
