*&---------------------------------------------------------------------*
*& Report z_concatenate_rmr001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_concatenate_rmr001.


DATA: GV_NOMBRE TYPE STRING,
      GV_MENSAJE TYPE STRING.

CONSTANTS GC_BIENVENIDO TYPE C VALUE 'BIENVENIDO' LENGTH 11.

gv_nombre = 'JUAN'.

CONCATENATE gc_bienvenido gv_nombre INTO gv_mensaje SEPARATED BY SPACE.

WRITE:/ gv_mensaje.
