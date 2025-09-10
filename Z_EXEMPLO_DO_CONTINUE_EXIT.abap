REPORT z_exemplo_do_continue_exit.

* Exemplo de uso dos comandos DO, CONTINUE e EXIT em ABAP

DATA: v_total TYPE i. " Variável para acumular o total

DO 10 TIMES.
    " Se o índice do loop for igual a 6, o comando EXIT encerra o loop imediatamente
    IF sy-index = 6.
        EXIT. " Para o loop ao chegar no 6
    ENDIF.

    " Se o índice do loop for ímpar, o comando CONTINUE pula para a próxima iteração
    IF sy-index MOD 2 = 1.
        CONTINUE. " Pula os ímpares
    ENDIF.

    " Se chegou aqui, o índice é par e menor que 6, então soma ao total
    v_total = v_total + sy-index.
    WRITE: / 'Somando:', sy-index.
ENDDO.

