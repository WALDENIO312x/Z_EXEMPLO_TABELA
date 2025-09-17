REPORT z_teste_saudacao_fm.

* Chama o Function Module Z_SAUDACAO passando o parâmetro NOME
CALL FUNCTION 'Z_SAUDACAO'
  EXPORTING
    nome = 'Waldenio'.