REPORT Z_PRATICA_TABUADA.

*-------------------------------------------------------------*
* Programa para exibir a tabuada de um número informado pelo usuário
*-------------------------------------------------------------*

* Parâmetro de entrada obrigatório para o número da tabuada
PARAMETERS: p_num TYPE i OBLIGATORY DEFAULT 1.

START-OF-SELECTION.

    * Validação do parâmetro: só permite números de 1 a 10
    IF p_num < 1 OR p_num > 10.
        WRITE: / 'Por favor, informe um número entre 1 e 10.'.
        EXIT. " Encerra o programa se o número não estiver no intervalo permitido
    ENDIF.

    * Declaração das variáveis auxiliares
    DATA: lv_index TYPE i,    " Variável para o multiplicador (1 a 10)
          lv_result TYPE i.   " Variável para armazenar o resultado da multiplicação

    * Loop para calcular e exibir a tabuada
    DO 10 TIMES.
        lv_index = sy-index.              " sy-index vai de 1 a 10 em cada repetição
        lv_result = p_num * lv_index.     " Calcula o resultado da multiplicação
        WRITE: / p_num, 'x', lv_index, '=', lv_result. " Exibe a linha da tabuada
    ENDDO.

*-------------------------------------------------------------*
* Explicações práticas:
* - O usuário informa um número entre 1 e 10.
* - O programa valida se o número está no intervalo permitido.
* - Se estiver correto, exibe a tabuada desse número de 1 a 10.
* - Cada linha mostra a multiplicação e o resultado.
*