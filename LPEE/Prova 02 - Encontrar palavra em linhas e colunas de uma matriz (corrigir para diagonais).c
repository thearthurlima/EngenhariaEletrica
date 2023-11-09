/* Dada uma matriz de caracteres fornecida 
   pelo usuário, encontrar uma palavra nas 
   linhas, colunas. (Bônus: diagonais). */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

//Função para ler matriz do usuário
void lerMatriz(char matriz[MAX][MAX], int l, int c) { 
	int i, j;
	
	for(i = 0; i < l; i++) {
		for(j = 0; j < c; j++) {
			scanf(" %c", &matriz[i][j]);
		}
	}
}

//Função para imprimir matriz do usuário
void imprimirMatriz(char matriz[MAX][MAX], int l, int c) { 
	int i, j;
	
	for(i = 0; i < l; i++) {
		for(j = 0; j < c; j++) {
			printf(" %c ", matriz[i][j]);
		}
		printf("\n");
	}
}

//Função para procurar a palavra nas colunas
int encontrarNasColunas(char matriz[MAX][MAX], char palavra[MAX], int tamanho, int l, int c) {
    int i, j, k, flag, contagem = 0;

    for (j = 0; j < c; j++) { // Percorre todas as colunas
        for (i = 0; i <= l - tamanho; i++) { // Percorre as linhas até um limite seguro
            flag = 0; // Reinicia a flag para cada nova coluna
            for (k = 0; k < tamanho; k++) {
                if (matriz[i + k][j] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }
    return contagem;
}

//Função para procurar a palavra nas linhas
int encontrarNasLinhas(char matriz[MAX][MAX], char palavra[MAX], int tamanho, int l, int c) {
    int i, j, k, flag, contagem = 0;

    for (j = 0; j < c; j++) { // Percorre todas as colunas
        for (i = 0; i <= l - tamanho; i++) { // Percorre as linhas até um limite seguro
            flag = 0; // Reinicia a flag para cada nova coluna
            for (k = 0; k < tamanho; k++) {
                if (matriz[j][i + k] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }
    return contagem;
}

//Função para procurar a palavra nas diagonais
int encontrarNasDiagonais(char matriz[MAX][MAX], char palavra[MAX], int tamanho, int l, int c) {
    int i, j, k, z, flag, contagem = 0;

    // Procura da esquerda superior para a direita inferior
    for (j = 0; j <= c - tamanho; j++) {
        for (i = 0; i <= l - tamanho; i++) {
            flag = 0;
            for (k = 0, z = 0; k < tamanho; k++, z++) {
                if (matriz[j + k][i + z] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }

    // Procura da esquerda inferior para a direita superior
    for (j = 0; j <= c - tamanho; j++) {
        for (i = tamanho - 1; i < l; i++) {
            flag = 0;
            for (k = 0, z = 0; k < tamanho; k++, z++) {
                if (matriz[i - k][j + z] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }

    return contagem;
}

//Função para limpar o buffer de entrada para não dar erro ao ler a string
void limparBufferEntrada() { 
    int c;
    while ((c = getchar()) != '\n' && c != EOF) { }
}

int main() {
	char matriz[MAX][MAX], palavra[MAX+1];
	int linhas, colunas, tamanho;
	
    printf("\n	Este programa encontra uma palavra nas linhas,"
		   "\n	colunas e diagonais de uma matriz.\n\n");

	printf("Numero de linhas da matriz: ");
	scanf("%d", &linhas);
	printf("Numero de colunas da matriz: ");
	scanf("%d", &colunas);
	
	printf("\nDigite os elementos da matriz: ");
	
	lerMatriz(matriz, linhas, colunas);
	printf("\n");
	imprimirMatriz(matriz, linhas, colunas);
	
	printf("\nDigite a palavra que deseja encontrar na matriz: ");
	
    limparBufferEntrada(); // Limpa buffer de entrada

	scanf("%s", palavra);
	tamanho = strlen(palavra);
	
	printf("\n\n    Linhas: %d vez(es)\n    Colunas: %d vez(es)\n    Diagonais: %d vez(es)\n",
	       encontrarNasLinhas(matriz, palavra, tamanho, linhas, colunas),
	       encontrarNasColunas(matriz, palavra, tamanho, linhas, colunas),
	       encontrarNasDiagonais(matriz, palavra, tamanho, linhas, colunas));

}
