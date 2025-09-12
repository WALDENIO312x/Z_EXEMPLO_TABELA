" Exemplo prático de uso de FORM e PERFORM em ABAP
REPORT z_from_e_perform.

" Declaração de variáveis globais
DATA: gv_nome     TYPE string,
    gv_sobrenome TYPE string,
    gv_idade     TYPE i.

START-OF-SELECTION.
  " Atribui valores às variáveis
  gv_nome      = 'Waldenio'.
  gv_sobrenome = 'Menezes'.
  gv_idade     = 26.

