#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 20

void explicarCodigo();
void lerVetor(int vetor[MAX], int tamVetor);
void imprimirVetor(int vetor[MAX], int tamVetor);
void organizarVetorCrescente(int vetor[MAX], int tamVetor);
void organizarVetorDecrescente(int vetor[MAX], int tamVetor);

int main() {
	
	int vetor[MAX], tamVetor;
	char repetir;

	explicarCodigo();

	do{
		printf("\nDigite o tamanho do vetor [1, %d]: ", MAX);
		
		scanf("%d", &tamVetor);
		while(tamVetor > MAX || tamVetor < 1) {
			printf("\nO valor deve estar no intervalo fornecido.\n", MAX);
			printf("\nDigite o tamanho do vetor [1, %d]: ", MAX);
			scanf("%d", &tamVetor);
		}
		
	    printf("\n	Digite os elementos do vetor:\n");
		lerVetor(vetor, tamVetor);
	
		organizarVetorCrescente(vetor, tamVetor);
		printf("\nVetor em ordem crescente: ");
		imprimirVetor(vetor, tamVetor);
		
		organizarVetorDecrescente(vetor, tamVetor);
		printf("\nVetor em ordem decrescente: ");
		imprimirVetor(vetor, tamVetor);
		
		printf("\n\nDeseja repetir? (S/N): ");
        scanf(" %c", &repetir);
	}while(repetir == 'S' || repetir == 's');

	return 0;
}

void explicarCodigo() {
    printf("\n	Este programa le um vetor e o organiza de forma crescente e decrescente.");
    printf("\n	Exemplo: vetor[] = {4,2,5,7,1}.");
    printf("\n	Saida: {1,2,4,5,7} e {7,5,4,2,1}.\n");
}

void lerVetor(int vetor[MAX], int tamVetor) {
    int i;
	
	for (i = 0; i < tamVetor; i++) {
        printf("	Elemento [%d]: ", i+1);
        scanf("%d", &vetor[i]);
    }
}

void imprimirVetor(int vetor[MAX], int tamVetor) {
	int i;
	
	for(i = 0; i < tamVetor; i++)
		if(i == 0)
			printf("{%d", vetor[i]);
		else if(i == tamVetor-1)
			printf(",%d}", vetor[i]);
		else
			printf(",%d");
}

void organizarVetorCrescente(int vetor[MAX], int tamVetor) {
	int i, j, aux;
	
	for(i = 0; i <= tamVetor; i++) {
		for(j = 0; j < tamVetor-1; j++) {
			if(vetor[j] > vetor[j+1]) {
				aux = vetor[j];
				vetor[j] = vetor[j+1];
				vetor[j+1] = aux;
			}
		}
	}
}

void organizarVetorDecrescente(int vetor[MAX], int tamVetor) {
	int i, j, aux;
	
	for(i = 0; i <= tamVetor; i++) {
		for(j = 0; j < tamVetor-1; j++) {
			if(vetor[j] < vetor[j+1]) {
				aux = vetor[j];
				vetor[j] = vetor[j+1];
				vetor[j+1] = aux;
			}
		}
	}
}
