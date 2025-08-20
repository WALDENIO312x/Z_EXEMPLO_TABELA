*&---------------------------------------------------------------------*
*& Report Z_EXEMPLO_TABELA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_EXEMPLO_TABELA.

TYPES: BEGIN OF ty_cliente,
         id   TYPE i,
         nome TYPE string,
       END OF ty_cliente.

DATA: ls_cliente TYPE ty_cliente,
      lt_clientes TYPE STANDARD TABLE OF ty_cliente.

ls_cliente-id = 1.
ls_cliente-nome = 'Waldenio'.

APPEND ls_cliente TO lt_clientes.

LOOP AT lt_clientes INTO ls_cliente.
  WRITE: / 'ID:', ls_cliente-id, 'Nome:', ls_cliente-nome.
ENDLOOP.