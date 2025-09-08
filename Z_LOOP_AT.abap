REPORT Z_LOOP_AT.

TYPES: BEGIN OF ty_nome,
         nome TYPE string,
       END OF ty_nome.

DATA: lt_nomes TYPE STANDARD TABLE OF ty_nome,
      ls_nome TYPE ty_nome.

