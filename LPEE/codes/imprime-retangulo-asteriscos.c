#include <stdio.h>

#define MAX 100

void lerIntValido(int *numero);
void imprimirPadrao(int linhas, int colunas);
void explicarPrograma();

int main() {
	int linhas, colunas;

	explicarPrograma();
	
	printf("\nDigite o numero de linhas: ");
	lerIntValido(&linhas);
	printf("Digite o numero de colunas: ");
	lerIntValido(&colunas);
		
	imprimirPadrao(linhas, colunas);
	printf("\n\n");
}

void lerIntValido(int *numero) {
    do {
        while(scanf("%d", numero) != 1) {
            printf("Entrada invalida. Digite um numero inteiro: ");
			while(getchar() != '\n'); // Limpa o buffer de entrada para evitar loop infinito
        }
        while(getchar() != '\n'); // Limpa o buffer de entrada para remover a parte decimal, caso o número inserido seja do tipo float.
        if (*numero <= 0) {
            printf("Entrada invalida. Digite um numero inteiro positivo: ");
        }
    } while (*numero <= 0);
}

void imprimirPadrao(int linhas, int colunas) {
    for(int i = 1; i <= linhas; i++) {
	    printf("\n");
        for(int j = 1; j <= colunas; j++) {
            if(i == 1 || i == linhas || j == 1 || j == colunas) {
                printf("* ");
            } else {
                printf("  ");
            }
        }
    }
}

void explicarPrograma() {
	printf("\n\tEste programa imprime um retangulo de asteriscos\n\tcom as dimensoes informadas pelo usuario.\n");
	printf("\tExemplo: linhas = 5, colunas = 7\n\n");
    printf("\t* * * * * * *\n");
    printf("\t*           *\n");
    printf("\t*           *\n");
    printf("\t*           *\n");
    printf("\t* * * * * * *\n");
}