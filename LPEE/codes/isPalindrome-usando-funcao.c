/*
	Este é um algoritmo para verificar se a primeira palavra
	digitada pelo usuário é um palíndromo.
*/

#include <stdio.h>
#include <string.h>

#define MAX 25

int ehPalindromo(char palavra[MAX], int primeiraPosicao, int ultimaPosicao) {
    int tamPalavra = ultimaPosicao - primeiraPosicao + 1;

    for (int i = 0; i < tamPalavra / 2; i++) {
        if (palavra[primeiraPosicao + i] != palavra[ultimaPosicao - i]) {
            return 0;  // Não é um palíndromo, retorna 0
        }
    }

    return 1;  // É um palíndromo, retorna 1
}

int main() {
    char palavra[MAX];
    
	fgets(palavra, MAX, stdin);

    // Remove o caractere de nova linha (\n) ou espaço, se presente
    palavra[strcspn(palavra, "\n ")] = '\0';

    int ultPosicao = strlen(palavra);

    // Verifica se é palíndromo e exibe o resultado
    printf("\nA palavra \"%s\" %s um palíndromo.\n", palavra, ehPalindromo(palavra, 0, ultPosicao - 1) ? "é" : "não é");

    return 0;
}