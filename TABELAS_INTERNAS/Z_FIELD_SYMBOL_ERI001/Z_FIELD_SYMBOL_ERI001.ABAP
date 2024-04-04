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
         TABIX_KNA1  TYPE I,
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
           gc_exist     TYPE string VALUE 'EXIST'.

FIELD-SYMBOLS: <GFS_CLIENTES> TYPE gty_clientes.

SELECT * FROM kna1
         INTO TABLE gt_kna1.
IF sy-subrc <> 0.
  WRITE:/ gc_select_ko.
ELSE.
  LOOP AT gt_kna1 INTO gwa_kna1
  WHERE land1 <> 'PT'
        OR LAND1 = ' '.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
*    GWA_CLIENTES-name1 = gwa_kna1-name1.
*    GWA_CLIENTES-land1 = GWA_KNA1-land1.
    gwa_clientes-tabix_kna1 = SY-tabix.

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

LOOP AT gt_clientes ASSIGNING <gfs_clientes>
  WHERE LAND1 = 'US'.
  <gfs_clientes>-land1 = 'ES'.
ENDLOOP.

  IF SY-SUBRC <> 0.
    WRITE:/ gc_loop_ko, SY-TABIX.

  ELSE.
    cl_demo_output=>display( gt_clientes ).
  ENDIF.

MOVE-CORRESPONDING gt_kna1 TO gt_clientes.
cl_demo_output=>display( gt_clientes ).
ENDIF.
