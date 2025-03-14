#include <stdio.h>

#define MAX_MATRIZ 10
#define MAX_VETOR 10

void lerInt (int *numero, int min, int max) {
	int c;
	while(scanf("%d", numero) != 1 || *numero < min || *numero > max) {
		printf("Numero invalido. Digite um numero no intervalo [%d, %d]: ", min, max);
		while((c = getchar()) != '\n' && c != EOF); //LimparBufferEntrada
	}
}

void lerMatriz (int matriz[MAX_MATRIZ][MAX_MATRIZ], int l, int c) {
	int i, j;
	
	printf("\n");

	for(i = 0; i < l; i++)
		for(j = 0; j < c; j++) {
			printf("matriz[%d][%d] = ", i, j);
			scanf("%d", &matriz[i][j]);
		}
}

void imprimirMatriz (int matriz[MAX_MATRIZ][MAX_MATRIZ], int l, int c) {
	int i, j;
	
	for(i = 0; i < l; i++) {
		printf("\n");
		for(j = 0; j < c; j++) {
			printf(" %d", matriz[i][j]);	
		}
	}
	
	printf("\n");
}

void lerVetor (int vetor[MAX_VETOR], int tam, int min, int max) {
	int i, j;
	
	for(i = 0; i < tam; i++)
		lerInt(&vetor[i], min, max);	
}

void lerItinerario (int itinerario[MAX_VETOR], int tam, int min, int max) {
    int i = 0;

	printf("Digite os numeros do itinerario [%d, %d]: ", min, max);

    while(i < tam) {
        if(scanf("%1d", &itinerario[i]) != 1 || itinerario[i] < min || itinerario[i] > max) {
            printf("Numero '%d' invalido.\n\nDigite os numeros do itinerario [%d, %d]: ", itinerario[i], min, max);
			i = 0;
            while(getchar() != '\n'); // LimparBufferEntrada
        } else {
            i++;
        }
    }
	while(getchar() != '\n'); // LimparBufferEntrada
}

void imprimirVetor(int vetor[MAX_VETOR], int tam) {
	int i;
	
	printf("\nItinerario: ");
	for(i = 0; i < tam; i++)
		printf(" %d", vetor[i]);
	printf("\n");
}

int somaItinerario(int matriz[MAX_MATRIZ][MAX_MATRIZ], int itinerario[MAX_VETOR], int tamItinerario) {
	int i, soma = 0;
	
	for(i = 0; i < tamItinerario-1; i++){
		printf("\nmatriz[%d][%d] // %d", itinerario[i], itinerario[i+1], matriz[itinerario[i]][itinerario[i+1]]);
		soma += matriz[itinerario[i]][itinerario[i+1]];
	}
	
	return soma;
}

int main() {
	int matriz[MAX_MATRIZ][MAX_MATRIZ], itinerario[MAX_VETOR];
	int dim, tam, posicaoMaxima = 0;
	
	printf("Dimensao da matriz [%d, %d]: ", 1, MAX_MATRIZ);
	lerInt(&dim, 1, MAX_MATRIZ);
	
	printf("Digite os numeros da matriz:\n");
	lerMatriz(matriz, dim, dim);
	imprimirMatriz(matriz, dim, dim);

	printf("\nQuantos numeros comporao o itinerario? ");
	lerInt(&tam, 2, MAX_VETOR);

	posicaoMaxima = dim - 1;

	lerItinerario(itinerario, tam, 0, posicaoMaxima);
	imprimirVetor(itinerario, tam);
	
	printf("\n\nSoma: %d\n\n", somaItinerario(matriz, itinerario, tam));
}