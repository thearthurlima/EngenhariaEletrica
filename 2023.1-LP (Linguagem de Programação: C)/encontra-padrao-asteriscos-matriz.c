#include <stdio.h>
#include <stdlib.h>

#define MAX 100

void lerMatriz(char matriz[MAX][MAX], int linhas, int colunas){	
	int i, j;
	
	for(i = 0; i < linhas; i++)
		for(j = 0; j < colunas; j++)
			scanf(" %c", &matriz[i][j]);
}

void exibirMatriz(char matriz[MAX][MAX], int linhas, int colunas){	
	int i, j;
	
	for(i = 0; i < linhas; i++){
		for(j = 0; j < colunas; j++)
			printf(" %c ", matriz[i][j]);

		printf("\n");
	}
}

int encontrarPadrao(char matriz[MAX][MAX], int linhas, int colunas){
	int i, j, contagem = 0;
	
	for(i = 0; i < linhas-1; i++){
		for(j = 0; j < colunas-1; j++)
			if(matriz[i][j] == '*' && matriz[i+1][j] == '*' && matriz[i+1][j+1] == '*')
			contagem++;
		
		printf("\n");
	}
	
	return contagem;
}

int main ()
{
	int linhas, colunas;
	char matriz[MAX][MAX];
	
	printf("Dada uma matriz, conta quantas vezes o padrao \nde astericos abaixo aparece na matriz:");
  	printf("\n\n*\n* *\n\n");
	
	printf("Digite o numero de LINHAS da matriz: ");
	scanf("%d", &linhas);
	printf("Digite o numero de COLUNAS da matriz: ");
	scanf("%d", &colunas);
	
	printf("\nDigite os valores da matriz:\n");
	lerMatriz(matriz, linhas, colunas);

	printf("\n");
	exibirMatriz(matriz, linhas, colunas);
	
	printf ("O padrao aparece %d vezes", encontrarPadrao(matriz, linhas, colunas));
	
	return 0;
}
