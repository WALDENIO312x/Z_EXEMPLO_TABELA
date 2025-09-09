REPORT z_exemplo_while.

* Exemplo de uso do comando WHILE em ABAP
* O laço WHILE executa o bloco de código enquanto a condição for verdadeira

DATA: v_num TYPE i VALUE 1. "Declaração e inicialização da variável

WRITE: / 'Exemplo do comando WHILE:'.

WHILE v_num <= 5.
    WRITE: / 'Valor:', v_num. "Exibe o valor atual da variável
    v_num = v_num + 1.        "Incrementa a variável
ENDWHILE.

* Ao final, o loop terá exibido os valores de 1 a 5