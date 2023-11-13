/* Dada uma matriz de caracteres fornecida 
   pelo usuário, encontrar uma palavra nas 
   linhas, colunas. (Bônus: diagonais). */

#include <stdio.h>
#include <string.h>

#define MAX 100

void lerMatriz(char matriz[MAX][MAX], int l, int c) { 
	int i, j;
	
	for(i = 0; i < l; i++)
		for(j = 0; j < c; j++)
			scanf(" %c", &matriz[i][j]);

}

void imprimirMatriz(char matriz[MAX][MAX], int l, int c) { 
	int i, j;

	for(i = 0; i < l; i++) {
		for(j = 0; j < c; j++) {
			printf(" %c ", matriz[i][j]);
		}
		printf("\n");
	}

}

int encontrarNasLinhas(char matriz[MAX][MAX], char palavra[MAX], int l, int c) {
    int i, j, k, flag, contagem = 0;
    int tamanho = strlen(palavra); //A função strlen() ignora o '\0' e o '\n'

    for (j = 0; j < l; j++) { // Percorre todas as linhas
        for (i = 0; i <= c - tamanho; i++) { // Percorre as colunas até um limite seguro
            flag = 0; // Reinicia a flag para cada nova coluna
            for (k = 0; k < tamanho; k++) { //Percorre a string e a matriz simultaneamente comparando os valores
                if (matriz[j][i + k] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }
    return contagem;
}

int encontrarNasColunas(char matriz[MAX][MAX], char palavra[MAX], int l, int c) {
    int i, j, k, flag, contagem = 0;
    int tamanho = strlen(palavra); //A função strlen() ignora o '\0' e o '\n'

    for (j = 0; j < c; j++) { // Percorre todas as colunas
        for (i = 0; i <= l - tamanho; i++) { // Percorre as linhas até um limite seguro
            flag = 0; // Reinicia a flag para cada nova linha
            for (k = 0; k < tamanho; k++) { //Percorre a string e a matriz simultaneamente comparando os valores
                if (matriz[i + k][j] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }
    return contagem;
}

int encontrarNasDiagonais(char matriz[MAX][MAX], char palavra[MAX], int l, int c) {
    int i, j, k, z, flag, contagem = 0;
    int tamanho = strlen(palavra); //A função strlen() ignora o '\0' e o '\n'

    // Procura da esquerda superior para a direita inferior
    for (j = 0; j <= c - tamanho; j++) {
        for (i = 0; i <= l - tamanho; i++) {
            flag = 0;
            for (k = 0, z = 0; k < tamanho; k++, z++) {
                if (matriz[j + k][i + z] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }

    // Procura da esquerda inferior para a direita superior
    for (j = 0; j <= c - tamanho; j++) {
        for (i = tamanho - 1; i < l; i++) {
            flag = 0;
            for (k = 0, z = 0; k < tamanho; k++, z++) {
                if (matriz[i - k][j + z] == palavra[k]) {
                    flag++;
                }
            }
            if (flag == tamanho) {
                contagem++;
            }
        }
    }

    return contagem;
}

//Função para limpar o buffer de entrada para não dar erro ao ler a string
void limparBufferEntrada() { 
    char c;
    while ((c = getchar()) != '\n' && c != EOF) { }
    
    /*Após digitar os valores da matriz, o '\n' fica no buffer
	e impede a leitura da palavra. Para resolver esse problema, usei a
	função getchar() que armazena os caracteres em uma variável do tipo
	char (também poderia ser int).
	
	1) != '\n': Esta condição verifica se o caractere lido não é uma
	nova linha ('\n'). A nova linha é um caractere especial que representa
	o final de uma linha de texto. Essa parte da condição garante que o
	loop continue enquanto não for encontrado um caractere de nova linha.

	2) &&: Este operador lógico "E" combina as duas condições.
	O loop continuará enquanto ambas as condições forem verdadeiras.

	3) c != EOF: Esta parte da condição verifica se o caractere lido
	não é o indicador de fim de arquivo (EOF). O EOF é um valor
	especial que indica o final de um arquivo. Se o final do arquivo
	for atingido, a condição se torna falsa, e o loop é interrompido.
	
	4) Se \n for lido, o loop termina.
	Se EOF for lido, o loop também termina.*/
}

int main() {
	char matriz[MAX][MAX], palavra[MAX+1], repetir;
	int linhas, colunas, tamanho;
	
    printf("\n	Este programa encontra uma palavra nas linhas,"
		   "\n	colunas e diagonais de uma matriz.\n\n");

	printf("Numero de linhas da matriz: ");
	scanf("%d", &linhas);
	printf("Numero de colunas da matriz: ");
	scanf("%d", &colunas);
	
	printf("\nDigite os elementos da matriz: ");
	lerMatriz(matriz, linhas, colunas);
	printf("\n");
	imprimirMatriz(matriz, linhas, colunas);
	
	do {
		printf("\nDigite a palavra que deseja encontrar na matriz: ");
	    limparBufferEntrada(); // Limpa buffer de entrada
		scanf("%s", palavra);
			
		printf("\n\n    Linhas: %d vez(es)\n    Colunas: %d vez(es)\n    Diagonais: %d vez(es)\n",
		       encontrarNasLinhas(matriz, palavra, linhas, colunas),
		       encontrarNasColunas(matriz, palavra, linhas, colunas),
		       encontrarNasDiagonais(matriz, palavra, linhas, colunas));
		
		limparBufferEntrada();
		printf("\nEncontrar outra palavra? (S/N): "); 
		scanf(" %c", &repetir);
	} while(repetir == 'S' || repetir == 's');

	return 0;
}
