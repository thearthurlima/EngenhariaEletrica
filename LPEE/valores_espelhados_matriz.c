#include <stdio.h>
#define MAX_ORDEM 100

int main(){
	int matriz[MAX_ORDEM][MAX_ORDEM], ordem;

	printf("Digite a ordem da matriz quadrada: ");
	scanf("%d", &ordem);

    for(int i = 0; i < ordem; i++){ 
        for(int j = 0; j < ordem; j++){
			printf(" [%d][%d]: ", i, j);
			scanf("%d", &matriz[i][j]);
		}
	}

	printf("\nMatriz fornecida: \n\n");
	for(int i = 0; i < ordem; i++){
			for(int j = 0; j < ordem; j++)
				printf("%d ", matriz[i][j]);
			printf("\n");
	}
	printf("\n");

	//Encontrando números espelhados nas extremidades
	for(int i = 1; i < ordem; i++){ // 'i = 1' Desconsidera a posicao [0][0]
		if(matriz[0][i] == matriz[i][0])
		printf("O numero %d eh espelhado nas posicoes [%d][%d] e [%d][%d]\n", matriz[0][i], 0, i, i, 0);
	}

	//'ordem-1' é a última posição da matriz
	int n = ordem-1; //Atribuindo o valor a uma variável para melhor compreensão
	for(int i = 1; i < n; i++){ // 'i < n' Desconsidera a posicao [n][n]
		if(matriz[n][i] == matriz[i][n])
		printf("O numero %d eh espelhado nas posicoes [%d][%d] e [%d][%d]\n", matriz[n][i], n, i, i, n);
	}

	return 0;
}