#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

#define MAX 100

int main() {
    setlocale(LC_ALL, "Portuguese"); // Define o locale para português
    
	char string[MAX];
    int i, j, k, primLetra, ultLetra, tamPalavra, flag, contagem = 0;

    printf("Digite uma string: ");
    fgets(string, MAX, stdin);

    for (i = 0; string[i] != '\0'; i++) {
        if (string[i] != ' ' && string[i] != '\n') {
            primLetra = i;

            // Encontra o final da palavra
            for (j = i; string[j] != ' ' && string[j] != '\n' && string[j] != '\0'; j++) {
                ultLetra = j;
            }

            tamPalavra = ultLetra - primLetra + 1;
            flag = 1;

            // Verifica se a palavra é um palíndromo
            for (k = 0; k < tamPalavra / 2; k++) {
                if (string[primLetra + k] != string[ultLetra - k]) {
                    flag = 0; // Define a flag como 0 se não for palíndromo
                    break;
                }
            }

            if (flag == 1) {
                contagem++; // Aumenta a contagem se for um palíndromo
            }

            i = ultLetra; // Busca pela próxima palavra
        }
    }

    printf("\nContagem de palíndromos: %d", contagem);

    return 0;
}
