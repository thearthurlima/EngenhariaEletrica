#include <stdio.h>

#define MAX 100

void lerInt(int *numero);
int verificarImpar(int numero);
void imprimirPadrao(int numero);
void explicarPrograma();

int main() {
	int qtdLinhas;

	explicarPrograma();
	
	do {
		printf("Digite um inteiro impar: ");
		lerInt(&qtdLinhas);
		if(!verificarImpar(qtdLinhas))
			printf("Entrada incorreta. ");
	} while(!verificarImpar(qtdLinhas));
			
	imprimirPadrao(qtdLinhas);
}

void lerInt(int *numero) {
    while(scanf("%d", numero) != 1) {
        printf("Entrada invalida. Digite um numero inteiro: ");
        while(getchar() != '\n'); // Limpa o buffer de entrada
    }
}

int verificarImpar(int numero) {
	if(numero%2 == 0)
		return 0;
	else
		return 1;
}

void imprimirPadrao(int numero) {
    int meio = (numero + 1) / 2;

    for(int i = 1; i <= numero; i++) {
		printf("\n\t");
        for(int j = 1; j <= numero; j++) {
            if(i == meio || j == meio) {
                printf("* ");
            } else {
                printf("  ");
            }
        }
    }
}

void explicarPrograma() {
	printf("\n\tEste programa imprime um padrao de asteriscos de acordo\n\tcom um numero inteiro impar digitado pelo usuario.\n");
	printf("\tExemplo: ");
	printf("Digite um inteiro impar: 5\n\n");
    printf("\t    *    \n");
    printf("\t    *    \n");
    printf("\t* * * * *\n");
    printf("\t    *    \n");
    printf("\t    *    \n\n");
}
