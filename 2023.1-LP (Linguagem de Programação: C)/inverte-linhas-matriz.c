#include <stdio.h>

#define MAX 25

int main()
{
	int matriz[MAX][MAX];
	int linha, coluna, aux;
	int maxLinhas, maxColunas, ultLinha;
	
	printf("\nEste programa inverte as linhas de uma matriz de numeros inteiros.\n");
	printf("\nDigite a quantidade de linhas da matriz: ");
	scanf("%d", &maxLinhas);
	printf("Digite a quantidade de colunas da matriz: ");
	scanf("%d", &maxColunas);
	printf("\nDigite os valores da matriz %dx%d:\n", maxLinhas, maxColunas);
		
	//Lê a matriz
	for(linha = 0; linha < maxLinhas; linha++)
	{
		for(coluna = 0; coluna < maxColunas; coluna++)
		{
			scanf("%d", &matriz[linha][coluna]);
		}
		
	}

	//Inverte a matriz usando uma variavel auxiliar
	for(coluna = 0; coluna < maxColunas; coluna++) {
		linha = 0;
		ultLinha = maxLinhas-1;
		while(linha < ultLinha)
		{
			aux = matriz[linha][coluna];
			matriz[linha][coluna] = matriz[ultLinha][coluna];
			matriz[ultLinha][coluna] = aux;
			linha++;
			ultLinha--;
		}
	}

	//Exibe a matriz
	for(linha = 0; linha < maxLinhas; linha++)
	{
		printf("    ");
		for(coluna = 0; coluna < maxColunas; coluna++)
			printf(" %d", matriz[linha][coluna]);
	
		printf("\n");
	}	

	return(0);
}
