#include <stdio.h>

#define MIN 1
#define MAX 10

int main() {
	int matriz[MAX][MAX];
	int ordem;

	printf("\n\tEste programa le uma matriz de inteiros e:"
			"\n\t1. Ordena a diagonal principal de forma decrescente"
			"\n\t2. Verifica se os elementos simetricos em relacao a diagonal principal sao iguais"
			"\n\t   a) Se forem iguais, substitui ambos por '*'"
			"\n\t   b) Se forem diferentes, inverte as posicoes dos elementos"
			"\n\n\tExemplo:"
			"\n\tEntrada:"
			"\n\t   [2 3 4 9]\n\t   [3 1 5 4]\n\t   [8 5 7 8]\n\t   [9 0 8 2]"
			"\n\n\tSaida:"
			"\n\t   [7 * 8 *]\n\t   [* 2 * 0]\n\t   [4 * 2 *]\n\t   [* 4 * 1]\n\n");	
	
	printf("Digite a ordem da matriz [%d, %d]: ", MIN, MAX);
	scanf("%d", &ordem);
	while(ordem < MIN || ordem > MAX){
		printf("Ordem invalida. Digite a ordem da matriz [%d, %d]: ", MIN, MAX);
		scanf("%d", &ordem);
	}
	printf("\n");

	for(int i = 0; i < ordem; i++) //Le a matriz de caracteres
		for(int j = 0; j < ordem; j++){
			printf("matriz[%d][%d] = ", i, j);
			scanf("%d", &matriz[i][j]);
		}

	printf("\nMatriz fornecida:\n");
	for(int i = 0; i < ordem; i++) {
		printf("\n");
		for(int j = 0; j < ordem; j++)
			printf(" %d", matriz[i][j]);
	}
	
	//Ordenar diagonal principal em ordem decrescente
	for(int i = 0; i < ordem; i++) //Loop for externo realiza apenas repete o loop interno de ordenação 'ordem' vezes
		for(int j = 0; j < ordem-1; j++) //Loop interno realiza a ordenacao da diagonal principal
			if(matriz[j][j] < matriz[j+1][j+1]){
				int aux = matriz[j][j];
				matriz[j][j] = matriz[j+1][j+1];
				matriz[j+1][j+1] = aux;
			}

	//Exibe matriz ordenada
	printf("\n\nMatriz com diagonal principal ordenada:\n");
	for(int i = 0; i < ordem; i++) {
		printf("\n");
		for(int j = 0; j < ordem; j++)
			printf(" %d", matriz[i][j]);
	}
	
	//Exibe matriz com valores simetricos diferentes invertidos e simetricos iguais substituidos por '*'
	printf("\n\nMatriz com simetricos iguais substituidos por '*' e diferentes invertidos:\n");
	for(int i = 0; i < ordem; i++) {
		printf("\n");
		for(int j = 0; j < ordem; j++){
			if(i == j){ //Se for um valor da diagonal principal
				printf(" %d", matriz[i][j]); //Exibe o valor normalmente
			}
			else{ //Se nao for um valor da diagonal principal
				if(matriz[i][j] == matriz[j][i]){ //Se for simetrico e igual
					printf(" *"); //Substitui por '*'
				}
				else{
					printf(" %d", matriz[j][i]); //Se nao for, inverte
				}
			}
		}
	}
	printf("\n\n");

	return 0;
}