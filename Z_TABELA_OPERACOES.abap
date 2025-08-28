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

