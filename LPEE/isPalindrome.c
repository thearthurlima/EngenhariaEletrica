/*
	Este é um algoritmo para verificar se a primeira palavra
	digitada pelo usuário é um palíndromo.
*/

#include <stdio.h>
#include <string.h>

#define MAX 25

int main() {
    char palavra[MAX];
	int primeiraPosicao = 0, ultimaPosicao = 0, tamPalavra;
	int flag; //Flag será o sinaliador de palíndromo

	printf("Digite uma palavra: ");
	fgets(palavra, MAX, stdin);

	// Este programa só considera a primeira palavra digitada
    // Remove o caractere de nova linha (\n) ou espaço, se presente
    palavra[strcspn(palavra, "\n ")] = '\0';
	tamPalavra = strlen(palavra);

	flag = 1; // Assume que é um palíndromo
    for (int i = 0; i < tamPalavra / 2; i++) {
        if (palavra[primeiraPosicao + i] != palavra[ultimaPosicao - i]) {
            flag = 0; // Caso não seja um palíndromo, flag recebe 0
			break;
        }
    }

    printf("\nA palavra \"%s\" %s um palíndromo.\n", palavra, flag ? "é" : "não é");

    return 0;
}