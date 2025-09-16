"-------------------------------------------------------------
" PROGRAMA PRINCIPAL: Z_PRINCIPAL_INCLUDE
" Exemplo de uso de INCLUDE para organizar e reutilizar código.
"-------------------------------------------------------------
* filepath: d:\src\Estudos SAP\Modulo 3\Z_PRINCIPAL.abap

REPORT z_principal_include.

*-------------------------------------------------------------*
* O comando INCLUDE insere o conteúdo do arquivo externo
* Z_INCLUDE_FUNCOES.abap neste ponto do programa.
* Dessa forma, todas as funções (FORMs) declaradas no include
* ficam disponíveis para uso aqui.
*-------------------------------------------------------------*
INCLUDE z_include_funcoes.

START-OF-SELECTION.

* Chama a rotina de boas-vindas
  PERFORM mostrar_boas_vindas.

* Chama a rotina que exibe uma mensagem do include
  PERFORM mostrar_mensagem.

* Chama a rotina de finalização
  PERFORM mostrar_finalizacao.

*-------------------------------------------------------------*
* Explicações práticas:
* - O programa principal fica mais limpo e organizado.
* - As funções auxiliares ficam separadas em um include,
*   facilitando a manutenção e a reutilização em outros programas.
* - Para adicionar novas funcionalidades, basta criar novos
*   FORMs no include e chamá-los no programa principal.
*-------------------------------------------------------------*