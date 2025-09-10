REPORT z_controle_loop_check.

* Exemplo de uso do comando DO com o controle CHECK em ABAP
* O laço de repetição DO (repetição de número fixo de vezes) executa o bloco
* de código um número específico de vezes, e o comando CHECK permite
* interromper a iteração atual e passar para a próxima, se uma condição
* não for atendida .
   
DO 10 TIMES.
    CHECK sy-index MOD 2 = 0. " Só continua se for par
    WRITE: / 'Número par:', sy-index.

    IF sy-index = 6.
        EXIT. " Sai do loop quando chegar no número 6
    ENDIF.
ENDDO.

WRITE: / 'Loop finalizado.'.