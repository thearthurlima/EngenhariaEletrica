#include <stdio.h>
#include <locale.h>

int main() {
	setlocale (LC_ALL, "Portuguese");
	float angulo01, angulo02, angulo03;
	
	printf("\n	Este programa recebe a entrada de três ângulos e calcula se os ângulos fornecidos formam um triângulo.");
	printf("\n	Exemplo:\n	1º ângulo = 120º;\n	2º ângulo = 30º;\n	3º ângulo = 30º;\n	Os ângulos formam um triângulo.\n\n");
	
	printf("Digite o 1º ângulo: ");
	scanf("%f", &angulo01);
	printf("Digite o 2º ângulo: ");
	scanf("%f", &angulo02);
	printf("Digite o 3º ângulo: ");
	scanf("%f", &angulo03);
	
	if (angulo01 + angulo02 + angulo03 == 180) {
		printf("\nOs ângulos inseridos formam um triângulo.");
	}
	else {
		printf("\nOs ângulos inseridos NÃO formam um triângulo.");
		return(0);
	}
	
	return(0);
}
