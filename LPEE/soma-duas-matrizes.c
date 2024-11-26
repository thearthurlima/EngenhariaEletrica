#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 20

void lerMatriz(int matriz[MAX][MAX], int l, int c) {
    int i, j;

    for (i = 0; i < l; i++) {
        for (j = 0; j < c; j++) {
            scanf("%d", &matriz[i][j]);
        }
    }
}

void imprimirMatriz(int matriz[MAX][MAX], int l, int c) {
    int i, j;

    for (i = 0; i < l; i++) {
        printf("\n");
        for (j = 0; j < c; j++) {
            printf(" %d", matriz[i][j]);
        }
    }
}

void somarMatrizes(int matrizA[MAX][MAX], int matrizB[MAX][MAX], int matrizSoma[MAX][MAX], int l, int c) {
    int i, j;

    for (i = 0; i < l; i++) {
        for (j = 0; j < c; j++) {
            matrizSoma[i][j] = matrizA[i][j] + matrizB[i][j];
        }
    }
}

int main() {
    int matrizA[MAX][MAX], matrizB[MAX][MAX], matrizSoma[MAX][MAX];
    int linhas, colunas;
    
    //Explica o código
    printf("\n	Este programa soma duas matrizes fornecidas pelo usuário");
    
	printf("\n\nDefina o numero de linhas das matrizes: ");
    scanf("%d", &linhas);
    printf("Defina o numero de colunas das matrizes: ");
    scanf("%d", &colunas);

	printf("\nDigite os valores da matriz A: ");
    lerMatriz(matrizA, linhas, colunas);
	printf("\nDigite os valores da matriz B: ");
    lerMatriz(matrizB, linhas, colunas);
    somarMatrizes(matrizA, matrizB, matrizSoma, linhas, colunas);
    printf("\nMatriz soma: ");
    imprimirMatriz(matrizSoma, linhas, colunas);

    return 0;
}
