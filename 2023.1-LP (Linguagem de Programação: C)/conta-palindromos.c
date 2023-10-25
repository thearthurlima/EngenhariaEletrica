#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main() {
    char string[MAX];
    int i, j, k, primLetra, ultLetra, tamPalavra, flag, contagem = 0;

    printf("Digite uma string: ");
	fgets(string, MAX, stdin);

    for (i = 0; string[i] != '\0'; i++) {
        if (string[i] != ' ' && string[i] != '\n') { //Acha a primeira posicao da palavra
            primLetra = i;
            for (j = i; string[j] != ' ' && string[j] != '\n' && string[j] != '\0'; j++) { //Quando encontra uma espaco ou quebra de linha ele identifica o final da palavra
                ultLetra = j;
            }

            tamPalavra = ultLetra - primLetra + 1;

            flag = 1; //Coloca flag em 1: Assume que a palavra eh palindromo
            for (k = 0; k < tamPalavra / 2; k++) {
                if (string[primLetra + k] != string[ultLetra - k]) {
                    flag = 0; //Coloca flag em 0 se nao for palindromo
                    break;
                }
            }
            if (flag == 1) {
                contagem++;
            }
            
            i = ultLetra; //O for mais externo inicia novamnte agora procurando a proxima palavra
        }
    }

    printf("\nContagem de palindromos: %d", contagem);

    return 0;
}
