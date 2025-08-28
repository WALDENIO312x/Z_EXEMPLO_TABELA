REPORT z_tabela_operacoes.

TYPES: BEGIN OF ty_produto, "Criando uma nova estrutura"
         id    TYPE i,
         nome  TYPE string,
       END OF ty_produto.

DATA: ls_cliente TYPE ty_cliente,
      lt_clientes TYPE STANDARD TABLE OF ty_cliente,

ls_cliente-id = 1.
ls_cliente-nome = 'Waldenio'.
APPEND ls_cliente TO lt_clientes.

ls_cliente-id = 2.
ls_cliente-nome = 'Wandré'.
APPEND ls_cliente TO lt_clientes.

ls_cliente-id = 3.
ls_cliente-nome = 'Weisdia'.
INSERT ls_cliente INTO TABLE lt_clientes INDEX 2. " Insere na posição 2

LOOP AT lt_clientes INTO ls_cliente.
  IF ls_cliente-id = 2.
    ls_cliente-nome = 'Wandré Clímaco Menezes'.
    MODIFY lt_clientes FROM ls_cliente. " Modifica o registro    
  ENDIF.
ENDLOOP.

DELETE lt_clientes WHERE id = 1. " Deleta o registro com id 1

LOOP AT lt_clientes INTO DATA ls_cliente.
    WRITE: / 'ID:', ls_cliente-id, 'Nome:', ls_cliente-nome.
ENDLOOP.

READ TABLE lt_clientes INTO ls_cliente WITH KEY id = 3.
IF sy-subrc = 0.
  WRITE: / 'Registro encontrado - ID:', ls_cliente-id, 'Nome:', ls_cliente-nome.
ELSE.
  WRITE: / 'Registro não encontrado'.
ENDIF. " Lê o registro com id 3