"-------------------------------------------------------------
" INCLUDE: Z_INCLUDE_FUNCOES
" Este include contém funções auxiliares (FORMs) que podem ser
" reutilizadas em vários programas ABAP.
"-------------------------------------------------------------
* filepath: d:\src\Estudos SAP\Modulo 3\Z_INCLUDE_FUNCOES.abap

*-------------------------------------------------------------*
* FORM mostrar_mensagem
* Exibe uma mensagem simples na tela.
*-------------------------------------------------------------*
FORM mostrar_mensagem.
  WRITE: / 'Mensagem do include!'.
ENDFORM.

*-------------------------------------------------------------*
* FORM mostrar_boas_vindas
* Exibe uma mensagem de boas-vindas.
*-------------------------------------------------------------*
FORM mostrar_boas_vindas.
  WRITE: / 'Bem-vindo ao programa principal!'.
ENDFORM.

*-------------------------------------------------------------*
* FORM mostrar_finalizacao
* Exibe uma mensagem de finalização.
*-------------------------------------------------------------*
FORM mostrar_finalizacao.
  WRITE: / 'Programa finalizado com sucesso.'.
ENDFORM.