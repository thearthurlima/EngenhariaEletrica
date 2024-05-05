#include <stdio.h>

#define MIN 1
#define MAX 50

int main(){

	int vetor[MAX], tamVetor;
	int frequencia[2][MAX];
	int numElementosUnicos = 0;

	printf("Digite o tamanho do vetor [%d, %d]: ", MIN, MAX);
	scanf("%d", &tamVetor);
	while(tamVetor < MIN || tamVetor > MAX){
		printf("Tamanho invalido. Digite o tamanho do vetor [%d, %d]: ", MIN, MAX);
		scanf("%d", &tamVetor);
	}

	printf("\n");
	for(int i = 0; i < tamVetor; i++){
		printf("vetor[%d] = ", i);
		scanf("%d", &vetor[i]);
	}
	printf("\n");

	for(int i = 0, k = 0; i < tamVetor; i++){
		int encontrado = 0;
		for(int l = 0; l < k; l++){
			if(vetor[i] == frequencia[0][l]){
				frequencia[1][l]++;
				encontrado = 1;
				break;
			}
		}
		if(!encontrado){
			frequencia[0][k] = vetor[i];
			frequencia[1][k] = 1;
			numElementosUnicos++;
			k++;
		}
	}

	printf("\nnumElementosUnicos: %d\n", numElementosUnicos);
	printf("\nElementos únicos da matriz: ");
	for(int i = 0; i < numElementosUnicos; i++)
		printf(" %d", frequencia[0][i]);
	printf("\n");
	//Exibe a quantidade de vezes que cada elemento aparece
	for(int i = 0; i < numElementosUnicos; i++)
		printf("\nO elemento %d aparece %d vez(es)", frequencia[0][i], frequencia[1][i]);

	return 0;
}