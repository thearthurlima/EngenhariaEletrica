#include <stdio.h>
#include <stdlib.h>

#define MAX 100

int main() {
	int i, j, k, l, linhas;
	
	printf("Defina o numero de linhas: ");
	scanf("%d", &linhas);
	
	//Padrão 1
	for(i = 1; i <= linhas; i++) {
		printf("\n");
		for(j = 1; j <= i; j++) {
			printf("* ");
		}
	}

	//Padrão 2
	for(i = linhas; i > 0; i--) {
		printf("\n");
		for(j = 1; j <= i; j++) {
			printf("* ");
		}
	}
	
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
}
