#include <stdio.h>
#include <locale.h>

long int fatorial(int numero);

int main() {
	setlocale(LC_ALL, "Portuguese");
	int numero, fat;
	
	printf("Digite um inteiro positivo: ");
	scanf("%d", &numero);
	
	printf("O fatorial de %d é: %d.", numero, (fatorial(numero)));
	
	return 0;
}

long int fatorial(int numero) {
	if(numero >= 1)
		return numero * fatorial(numero-1);
	else
		return 1;
}
