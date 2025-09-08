REPORT z_repeticao_do.

* Exemplo usando variável contador
DATA: lv_contador TYPE i VALUE 1.

WRITE: / 'Exemplo do comando DO com variável: '.

DO 5 TIMES.
    WRITE: / 'Repetição (variável):', lv_contador.
    lv_contador = lv_contador + 1.
ENDDO.

SKIP.

