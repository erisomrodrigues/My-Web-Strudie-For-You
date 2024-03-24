*&---------------------------------------------------------------------*
*& Report z_tab_table_eri001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_tab_table_eri001.

TYPES: BEGIN OF GTY_CLIENTES,
        NUM_CLIENTE TYPE I,
        NAME1       TYPE NAME1_GP,
        LAND1       TYPE LAND1_GP,
       END OF gty_clientes.

DATA: GT_KNA1 TYPE TABLE OF KNA1,
      GT_CLIENTES   TYPE TABLE OF gty_clientes.

DATA: GWA_KNA1 TYPE KNA1,
      GWA_CLIENTES TYPE gty_clientes.

DATA: GV_NUM_CLIENTE TYPE I,
      GB_EXIST       TYPE abap_bool.

CONSTANTS: GC_SELECT_KO TYPE STRING VALUE 'SELECT KO',
           GC_APPEND_KO TYPE STRING VALUE 'APPEND KO',
           GC_LOOP_KO   TYPE STRING VALUE 'LOOP KO'.

SELECT * FROM KNA1
         INTO TABLE GT_KNA1.
IF SY-SUBRC <> 0.
    WRITE:/ gc_select_ko.
    ELSE.
    LOOP AT GT_KNA1 INTO GWA_KNA1
    WHERE LAND1 <> 'PT'.
    ADD 1 TO gv_num_cliente.
    gwa_clientes-num_cliente = gv_num_cliente.
    GWA_CLIENTES-name1 = gwa_kna1-name1.
    GWA_CLIENTES-land1 = GWA_KNA1-land1.
    APPEND gwa_clientes TO gt_clientes.

    IF SY-SUBRC <> 0.
        WRITE:/ gc_append_ko.
    ENDIF.
    ENDLOOP.

    IF SY-SUBRC <> 0.
    WRITE:/ gc_loop_ko, SY-SUBRC.
    ELSE.
    CL_DEMO_OUTPUT=>display( gt_clientes ).
    ENDIF.

ENDIF.

gb_exist = ABAP_FALSE.

LOOP AT GT_KNA1 TRANSPORTING NO FIELDS
WHERE LAND1 <> 'PT'.
    gb_exist = ABAP_TRUE.

EXIT.
ENDLOOP.

IF gb_exist = abap_false.
    MESSAGE 'NOT EXIST' TYPE 'I'.
    ELSE.
    MESSAGE 'EXIST' TYPE 'I'.
ENDIF.
