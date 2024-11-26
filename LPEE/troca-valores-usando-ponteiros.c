#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void explicarCodigo(); //Protótipo função que explica o código
void troca(int *x, int *y); //Protótipo da função troca

int main() {
	int x, y;
	
	explicarCodigo();

	printf("\nDigite o valor de x: ");
	scanf("%d", &x);
	printf("Digite o valor de y: ");
	scanf("%d", &y);

	troca(&x, &y);
	
	printf("\nx = %d\ny = %d", x, y);
}

//Função que troca as variáveis
void troca(int *x, int *y) {
	int aux;
	
	aux = *x;
	*x = *y;
	*y = aux;
}

//Função que apenas explica o código
void explicarCodigo() {
    printf("\n	Este programa altera o valor de duas variaveis inteiras declaradas na main usando ponteiros.");
    printf("\n	Exemplo -  Entrada: x = 1 e y = 2.");
    printf("\n	Saida: x = 2 e y = 1.\n");
}