REPORT Z_LOOP_AT.

TYPES: BEGIN OF ty_nome,
         nome TYPE string,
       END OF ty_nome.

DATA: lt_nomes TYPE STANDARD TABLE OF ty_nome,
      ls_nome TYPE ty_nome.

ls_nome-nome = 'Ana'.
APPEND ls_nome TO lt_nomes.

ls_nome-nome = 'Carlos'.
APPEND ls_nome TO lt_nomes.

ls_nome-nome = 'João'.
APPEND ls_nome TO lt_nomes.

LOOP AT lt_nomes INTO ls_nome.
  WRITE: / 'Nome:', ls_nome-nome.
ENDLOOP.