*&---------------------------------------------------------------------*
*& Report z_move_corres_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_read_table_eri001.

TYPES: BEGIN OF gty_clientes,
         num_cliente TYPE i,
         name1       TYPE name1_gp,
         land1       TYPE land1_gp,
       END OF gty_clientes.

DATA: gt_kna1     TYPE TABLE OF kna1,
      gt_clientes TYPE TABLE OF gty_clientes.

DATA: gwa_kna1     TYPE kna1,
      gwa_clientes TYPE gty_clientes.

DATA: gv_num_cliente TYPE i,
      gb_exist       TYPE abap_bool.

CONSTANTS: gc_select_ko TYPE string VALUE 'SELECT KO',
           gc_append_ko TYPE string VALUE 'APPEND KO',
           gc_loop_ko   TYPE string VALUE 'LOOP KO',
           gc_read_ko   TYPE string VALUE 'READ KO'.

SELECT * FROM kna1
         INTO TABLE gt_kna1.
IF sy-subrc <> 0.
  WRITE:/ gc_select_ko.
ELSE.
  LOOP AT gt_kna1 INTO gwa_kna1
  WHERE land1 <> 'PT'.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
*    GWA_CLIENTES-name1 = gwa_kna1-name1.
*    GWA_CLIENTES-land1 = GWA_KNA1-land1.

    MOVE-CORRESPONDING gwa_kna1 TO gwa_clientes.

    APPEND gwa_clientes TO gt_clientes.

    IF sy-subrc <> 0.
      WRITE:/ gc_append_ko.
    ENDIF.
  ENDLOOP.

  IF sy-subrc <> 0.
    WRITE:/ gc_loop_ko, sy-subrc.
  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.

ENDIF.


MOVE-CORRESPONDING gt_kna1 TO gt_clientes.
cl_demo_output=>display( gt_clientes ).

READ TABLE gt_clientes INTO gwa_clientes INDEX 3.

IF sy-subrc <> 0.
  WRITE:/ gc_read_ko.
ELSE.
  WRITE:/ gwa_clientes-name1.
ENDIF.*&---------------------------------------------------------------------*
*& Report z_move_corres_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_read_table_eri001.

TYPES: BEGIN OF gty_clientes,
         num_cliente TYPE i,
         name1       TYPE name1_gp,
         land1       TYPE land1_gp,
       END OF gty_clientes.

DATA: gt_kna1     TYPE TABLE OF kna1,
      gt_clientes TYPE TABLE OF gty_clientes.

DATA: gwa_kna1     TYPE kna1,
      gwa_clientes TYPE gty_clientes.

DATA: gv_num_cliente TYPE i,
      gb_exist       TYPE abap_bool.

CONSTANTS: gc_select_ko TYPE string VALUE 'SELECT KO',
           gc_append_ko TYPE string VALUE 'APPEND KO',
           gc_loop_ko   TYPE string VALUE 'LOOP KO',
           gc_read_ko   TYPE string VALUE 'READ KO'.

SELECT * FROM kna1
         INTO TABLE gt_kna1.
IF sy-subrc <> 0.
  WRITE:/ gc_select_ko.
ELSE.
  LOOP AT gt_kna1 INTO gwa_kna1
  WHERE land1 <> 'PT'.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
*    GWA_CLIENTES-name1 = gwa_kna1-name1.
*    GWA_CLIENTES-land1 = GWA_KNA1-land1.

    MOVE-CORRESPONDING gwa_kna1 TO gwa_clientes.

    APPEND gwa_clientes TO gt_clientes.

    IF sy-subrc <> 0.
      WRITE:/ gc_append_ko.
    ENDIF.
  ENDLOOP.

  IF sy-subrc <> 0.
    WRITE:/ gc_loop_ko, sy-subrc.
  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.

ENDIF.


MOVE-CORRESPONDING gt_kna1 TO gt_clientes.
cl_demo_output=>display( gt_clientes ).

READ TABLE gt_clientes INTO gwa_clientes INDEX 3.

IF sy-subrc <> 0.
  WRITE:/ gc_read_ko.
ELSE.
  WRITE:/ gwa_clientes-name1.
ENDIF.
