#include <stdio.h>

#define MAX 20

void explicarPrograma();
void lerMatrizQuadrada(int matriz[MAX][MAX], int linhas, int colunas);
void imprimirMatriz(int matriz[MAX][MAX], int linhas, int colunas);
void acharTransposta(int matriz[MAX][MAX], int transposta[MAX][MAX], int linhas, int colunas);
void ordenarCrescente(int matriz[MAX][MAX], int dimensao);
void ordenarDecrescente(int matriz[MAX][MAX], int dimensao);

int main() {
	int matriz[MAX][MAX], matrizTransposta[MAX][MAX], dim;
	
	explicarPrograma();
	
	printf("\nDigite a dimensao da matriz quadrada: ");
	scanf("%d", &dim);
			
	printf("Digite os elementos da matriz:\n");
	lerMatrizQuadrada(matriz, dim, dim);
	printf("\nMatriz fornecida: \n");
	imprimirMatriz(matriz, dim, dim);
	
	acharTransposta(matriz, matrizTransposta, dim, dim);
	printf("\n\na) Matriz transposta: \n");
	imprimirMatriz(matrizTransposta, dim, dim);
	
	printf("\n\nb) Diagonal principal em ordem crescente:\n");
	ordenarCrescente(matriz, dim);
	imprimirMatriz(matriz, dim, dim);
	
	printf("\n\nc) Diagonal principal em ordem decrescente:\n");
	ordenarDecrescente(matriz, dim);
	imprimirMatriz(matriz, dim, dim);
	
	return 0;
}

void lerMatrizQuadrada(int matriz[MAX][MAX], int linhas, int colunas) {
	int i, j;
	
	for(i = 0; i < linhas; i++) //Percorre linhas
		for(j = 0; j < colunas; j++) //Percorre colunas
			scanf("%d", &matriz[i][j]);
}

void imprimirMatriz(int matriz[MAX][MAX], int linhas, int colunas) {
	int i, j;
	
	for(i = 0; i < linhas; i++) {
		printf("\n");
		for(j = 0; j < colunas; j++)
			printf(" %d", matriz[i][j]);
	}
}

void acharTransposta(int matriz[MAX][MAX], int transposta[MAX][MAX], int linhas, int colunas) {
	int i, j;
	
	for(j = 0; j < linhas; j++)
		for(i = 0; i < colunas; i++)
			transposta[j][i] = matriz[i][j];
}

void ordenarCrescente(int matriz[MAX][MAX], int dimensao) {
	int i, j, aux;
	
	for(j = 0; j < dimensao; j++) {
		for(i = 0; i < dimensao-1; i++) {
			if(matriz[i][i] > matriz[i+1][i+1]) {
				aux = matriz[i][i];
				matriz[i][i] = matriz[i+1][i+1];
				matriz[i+1][i+1] = aux;
			}
		}
	}
}

void ordenarDecrescente(int matriz[MAX][MAX], int dimensao) {
	int i, j, aux;
	
	for(j = 0; j < dimensao; j++) {
		for(i = 0; i < dimensao-1; i++) {
			if(matriz[i][i] < matriz[i+1][i+1]) { //Maior (>) substituído por menor (<) para organizar em ordem decrescente
				aux = matriz[i][i];
				matriz[i][i] = matriz[i+1][i+1];
				matriz[i+1][i+1] = aux;
			}
		}
	}
}
	
void explicarPrograma() {
	int i;
	
	printf("\n	Dada uma matriz quadrada, este programa:");
	printf("\n	a) Acha a transposta da matriz sem alterar a matriz original;");
	printf("\n	b) Ordena a diagonal principal em ordem crescente;");
	printf("\n	b) Ordena a diagonal principal em ordem decrescente.\n	");
	
	for(i = 0; i < 50; i++) //Imprime linha
		printf("-");
	printf("\n\n");
}
