*&---------------------------------------------------------------------*
*& Report ZTEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest.

TYPES: BEGIN OF gty_clientes,
         num_cliente TYPE i,
         name1       TYPE name1_gp,
         land1       TYPE land1_gp,
         tabix_kna1  TYPE i,
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
           gc_read_ko   TYPE string VALUE 'READ KO',
           gc_not_exist TYPE string VALUE 'NOT EXIST',
           gc_exist     TYPE string VALUE 'EXIST',
           GC_DELETE_KO TYPE STRING VALUE 'DELETE KO',
           GC_SORT_KO   TYPE STRING VALUE 'SORT KO'.

SELECT * FROM kna1
         INTO TABLE gt_kna1.

IF sy-subrc <> 0.
  WRITE:/ gc_select_ko.
ELSE.
  LOOP AT gt_kna1 INTO gwa_kna1
  WHERE land1 <> 'BR'
        OR land1 = ' '.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
*    GWA_CLIENTES-name1 = gwa_kna1-name1.
*    GWA_CLIENTES-land1 = GWA_KNA1-land1.
    gwa_clientes-tabix_kna1 = sy-tabix.

    MOVE-CORRESPONDING gwa_kna1 TO gwa_clientes.

    APPEND gwa_clientes TO gt_clientes.

    IF sy-subrc <> 0.
      WRITE:/ gc_append_ko.
    ENDIF.

  ENDLOOP.

  IF SY-subrc <> 0.
    WRITE:/ gc_loop_ko, SY-subrc.

  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.

  SORT gt_clientes BY LAND1 NAME1 DESCENDING.

  IF sy-subrc <> 0.
    WRITE:/ gc_SORT_ko, sy-subrc.

  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.

ENDIF.
