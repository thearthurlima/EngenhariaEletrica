#include <stdio.h>
#include <locale.h>

#define MAX 100

void explicarPrograma();
int lerVetor(char vetor[MAX], int tamanho);
int imprimirVetor(char vetor[MAX], int tamanho);
void colocaAsteriscos(char vetor[MAX], int *tamanho, char caractere, int numAsteriscos);

int main() {
	setlocale(LC_ALL, "Portuguese");
	char vetor[MAX], caractere;
	int numAsteriscos, tamanho;
	
	explicarPrograma();
	
	printf("\n\nNúmero de asteriscos a adicionar: ");
	scanf("%d", &numAsteriscos);
	printf("Quando encontrar o caractere: ");
	scanf(" %c", &caractere);
	
	printf("Digite o tamanho do vetor: ");
	scanf("%d", &tamanho);
	printf("Forneça os elementos do vetor:\n");
	lerVetor(vetor, tamanho);
	printf("\n");
	imprimirVetor(vetor, tamanho);
	
	colocaAsteriscos(vetor, &tamanho, caractere, numAsteriscos);
}

int lerVetor(char vetor[MAX], int tamanho) {
	for(int i = 0; i < tamanho; i++)
		scanf(" %c", &vetor[i]);
}

int imprimirVetor(char vetor[MAX], int tamanho) {
	for(int i = 0; i < tamanho; i++) {
		if(i == 0)
			printf("{%c,", vetor[i]);
		else if(i == tamanho-1)
			printf("%c}", vetor[i]);
		else
			printf("%c,", vetor[i]);
	}
}

void colocaAsteriscos(char vetor[MAX], int *tamanho, char caractere, int numAsteriscos) {
	char vetorAux[MAX];
	int i, j;
	int tam = *tamanho;
		
	for(i = 0, j = 0; i < tam; i++, j++) {
		if(vetor[i] == caractere) {
			for(int k = 0; k < numAsteriscos; k++, j++) {
				vetorAux[j] = '*';
			}
			j--;
		}
		else
			vetorAux[j] = vetor[i];
	}
	
	*tamanho = j;
	
	for(i = 0; i < j; i++)
		vetor[i] = vetorAux[i];
	
	printf("\n\n");
	imprimirVetor(vetorAux, j);
}

void explicarPrograma() {
	printf("\n	Este programa lê um vetor char e adiciona uma certa quantidade"
			"\n	de asteriscos onde houver um certo caractere no vetor.\n"
			"\n	Ex.: Adicionar 4 asteriscos"
			"\n	no vetor[] = {e, 2, u, f, v, a, 2, m}"
			"\n	quando encontrar o caractere '2'."
			"\n	Saída: vetor[] = {e, *, *, *, *, u, f, v, a, *, *, *, *, m}.");
}