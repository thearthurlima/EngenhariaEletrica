#include <stdio.h>
#include <stdlib.h>

#define MAX 100

int main() {
	int i, j, k, l, linhas, escolha = 0;
	
	printf("Padrao 1:\n");
	for(i = 1; i <= 3; i++) {
	printf("\n");
	for(j = 1; j <= i; j++) {
		printf("* ");
	}
}
	printf("\n\nPadrao 2:\n");
	for(i = 3; i > 0; i--) {
		printf("\n");
		for(j = 1; j <= i; j++) {
			printf("* ");
		}
	}
	printf("\n\nPadrao 3:\n");
    for (i = 3; i > 0; i--) {
        printf("\n");
        for (j = 1; j < i; j++) {
            printf("  ");
        }
        for (k = 1; k <= 2 * (3 - i) + 1; k++) {
            printf("* ");
        }
    }
	
	printf("\n\nDigite o numero referente ao padrao que deseja imprimir:");
	printf("\nPadrao 1 (1)\nPadrao 2 (2)\nPadrao 3 (3)\n");
	scanf("%d", &escolha);
	
	while (escolha != 1 && escolha != 2 && escolha != 3) {
		printf("\nOPCAO INVALIDA.\nEscolha o padrao que deseja imprimir (1, 2 ou 3): ");
		scanf("%d", &escolha);
	}

	printf("\nDefina o numero de linhas: ");
	scanf("%d", &linhas);
	
	switch(escolha)
	{
		case 1:
			//Padrão 1
			for(i = 1; i <= linhas; i++) {
				printf("\n");
				for(j = 1; j <= i; j++) {
					printf("* ");
				}
			}
			break;
		case 2:
			//Padrão 2
			for(i = linhas; i > 0; i--) {
				printf("\n");
				for(j = 1; j <= i; j++) {
					printf("* ");
				}
			}
			break;
		case 3:
			//Padrão 3
		    for(i = linhas; i > 0; i--) {
		        printf("\n");
		        for (j = 1; j < i; j++) {
		            printf("  ");
		        }
		        for(k = 1; k <= 2 * (linhas - i) + 1; k++) {
		            printf("* ");
		        }
		    }
		    break;
	}
}
