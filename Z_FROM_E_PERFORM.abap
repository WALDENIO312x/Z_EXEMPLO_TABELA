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

  " Chama a sub-rotina para exibir o nome
  PERFORM exibir_nome USING gv_nome.

  " Chama a sub-rotina para exibir nome completo
  PERFORM exibir_nome_completo USING gv_nome gv_sobrenome.

  " Chama a sub-rotina para exibir nome e idade
  PERFORM exibir_nome_idade USING gv_nome gv_idade.

*---------------------------------------------------------------------*
* Sub-rotina para exibir apenas o nome
*---------------------------------------------------------------------*
FORM exibir_nome USING p_nome TYPE string.
  " Exibe uma saudação com o nome informado
  WRITE: / 'Olá,', p_nome.
ENDFORM.

