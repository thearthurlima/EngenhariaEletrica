#include <stdio.h>

int fatorial(int numero);
void lerNumero(int *numero);
void imprimirNumero(int numero);

int main() {
	int numero;
	int fat;
	
	lerNumero(&numero);
	
	imprimirNumero(fatorial(numero));
}

int fatorial(int numero) {
	int fat = numero;
	
	for(; numero > 1; numero--)
		fat *= numero-1;
	
	return fat;
}

void lerNumero(int *numero) {
	int aux;
	
	scanf("%d", &aux);
	*numero = aux;
}

void imprimirNumero(int numero) {
	printf("%d", numero);
}

