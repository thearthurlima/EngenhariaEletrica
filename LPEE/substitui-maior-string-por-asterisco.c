#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main() {
    char string[MAX], stringAux[MAX];
    int i, j, k, flag, contPalindromos = 0, primLetra = 0, ultLetra = 0, tamPalavra = 0, tamMaiorPalindromo = 0;

    printf("\n	Este programa censura o maior palindromo da string.\n");
    printf("	Exemplo: \"arara ovo de arara\" - \"* ovo de *\"\n\n");
    
	printf("Digite uma string: ");
    fgets(string, MAX, stdin);

    for (i = 0; string[i] != '\0'; i++) { // Acha o tamanho do maior palíndromo
        if (string[i] != ' ' && string[i] != '\n') {
            primLetra = i;
            for (j = 0; string[j + i] != ' ' && string[j + i] != '\n'; j++) {
                ultLetra = j + i;
            }

            tamPalavra = ultLetra - primLetra + 1;

            flag = 1;
            for (k = 0; k < tamPalavra / 2; k++) {
                if (string[primLetra + k] != string[ultLetra - k]) {
                    flag = 0;
                    break;
                }
            }

            if (flag == 1) {
                if (tamPalavra > tamMaiorPalindromo) {
                    tamMaiorPalindromo = tamPalavra;
                }
                contPalindromos++;
            }

            i = ultLetra + 1;
        }
    }

    for (i = 0; string[i] != '\0'; i++) { // Substitui as letras do maior palíndromo por '*'
        if (string[i] != ' ' && string[i] != '\n') {
            primLetra = i;
            for (j = 0; string[j + i] != ' ' && string[j + i] != '\n'; j++) {
                ultLetra = j + i;
            }

            tamPalavra = ultLetra - primLetra + 1;

            flag = 1;
            for (k = 0; k < tamPalavra / 2; k++) {
                if (string[primLetra + k] != string[ultLetra - k]) {
                    flag = 0;
                    break;
                }
            }

            if (flag == 1 && tamPalavra == tamMaiorPalindromo) {
                for (k = primLetra; k <= ultLetra; k++) {
                    string[k] = '*';
                }
            }

            i = ultLetra + 1;
        }
    }

    for (i = 0, k = 0; string[i] != '\0'; i++, k++) { // Retira asteriscos sobrando

        if (string[i] == '*') { // Acha o começo e o final da palavra de asteriscos
            primLetra = i;
            for (j = 0; string[j + i] == '*'; j++) {
                ultLetra = j + i;
            }

            // printf("\nprimLetra	ultLetra"); // Visualizar as coordenadas dos palíndromos
            // printf("\n   [%d]		   [%d]", primLetra, ultLetra);

            i = ultLetra;
        }

        stringAux[k] = string[i];
    }

    if (contPalindromos > 0) { // Só copia a string auxiliar na principal se a string original tiver palíndromos
        for (i = 0; stringAux[i] != '\0'; i++) {
            string[i] = stringAux[i];
            string[i + 1] = '\0';
        }
    }

    printf("\n%s", string);
}
