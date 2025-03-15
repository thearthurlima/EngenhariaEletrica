#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main() {
    char string[MAX];
    int i, j, k, l, primLetra, ultLetra, tamPalavra = 0, tamMaiorPalavra = 0;

	printf("\n	Este programa organiza a maior palavra de uma string em ordem alfabetica.");
	printf("\n	Exemplo: \"Carla e inteligente\" - \"Carla e eegiilnntt\"");
	printf("\n\nDigite uma string: ");
    fgets(string, MAX, stdin);

    for (i = 0; string[i] != '\0'; i++) { // Encontra a primeira e última letra da palavra mais longa
        if (string[i] != ' ' && string[i] != '\n') {
            primLetra = i;
            for (j = 0; string[i + j] != ' ' && string[i + j] != '\n'; j++) {
                ultLetra = i + j;
            }
            tamPalavra = ultLetra - primLetra + 1;
            
            if (tamPalavra > tamMaiorPalavra) { //Encontra o tamanho da maior palavra
                tamMaiorPalavra = tamPalavra;
            }

            i = ultLetra; // Move para a próxima palavra
        }
    }

    for (i = 0; string[i] != '\0'; i++) {
        if (string[i] != ' ' && string[i] != '\n') {
            primLetra = i;
            for (j = 0; string[i + j] != ' ' && string[i + j] != '\n'; j++) {
                ultLetra = i + j;
            }
            tamPalavra = ultLetra - primLetra + 1;

            if (tamPalavra == tamMaiorPalavra) { //Se a palavra tiver o tamanho da maior palaavra
                for (k = 1; k <= tamPalavra; k++) { // Percorre a palavra o mesmo numero de vezes do tamanho da palavra
                    for (l = primLetra; l < ultLetra; l++) { //Percorre a palavra
                        if (string[l] > string[l + 1]) { // Troca os caracteres para ordenar em ordem crescente
                            char aux = string[l];
                            string[l] = string[l + 1];
                            string[l + 1] = aux;
                        }
                    }
                }
            }

            i = ultLetra; // Move para a próxima palavra
        }
    }

    printf("\n%s", string);

    return 0;
}
