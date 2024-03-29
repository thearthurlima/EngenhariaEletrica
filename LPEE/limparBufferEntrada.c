/*  A função getchar() armazena o caractere lido na variável c, que é do tipo int
	e depois compara se o valor de c é igual a '\n' ou EOF (End Of File).
	Chame esta função após a leitura de um caractere ou uma string.
	OBS.: É necessário incluir a biblioteca stdio.h para reconhecer o EOF.
*/

#include <stdio.h>

void limparBufferEntrada() {
    int c;
    while((c = getchar()) != '\n' && c != EOF);
}