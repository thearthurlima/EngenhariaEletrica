#include <stdio.h>
#define MAX_ORDEM 100 //Definindo um valor máximo para o tamanho da matriz, alocando espaço na memória

int main(){
    int matriz[MAX_ORDEM][MAX_ORDEM], auxMatriz[2][1], aux;
    int linhas, colunas, i, j, m, n;

    printf("Digite o numero de linhas da matriz: ");
	scanf("%d", &linhas); //Defino o máximo de linhas serão lidas
    printf("Digite o numero de colunas da matriz: ");
	scanf("%d", &colunas); //Defino o máximo de colunas serão lidas

    for(i = 0; i < linhas; i++){
        for(j = 0; j < colunas; j++){
			printf(" [%d][%d]: ", i, j);
			scanf("%d", &matriz[i][j]);
		}
	}

	//Imprime a matriz do usuário
	printf("\nMatriz fornecida: \n\n");
	for(i = 0; i < linhas; i++){
			for(m = 0; m < colunas; m++)
				printf("%d ", matriz[i][m]); //Quando há apenas uma instrução para ser executada, não é necessário colocar chaves. Este printf é a única instrução do for mais interno
			printf("\n"); //Esta instrição é executada após o for mais interno
	}

	//Algoritmo de ordenação simplificado
    for(i = 0; i < linhas; i++){            
		if(i % 2 == 0){
			//Reordena de forma crescente
			for(m = 0; m < colunas; m++){ //Executa o loop colunas vezes
				for(n = 0; n < colunas-1; n++){ //-1, pois não pode passar de colunas
					if(matriz[i][n] > matriz[i][n+1]){ //Compara o valor de [i][n] com o próximo valor
						aux = matriz[i][n]; //Auxiliar pega o valor de [i][n]
						matriz[i][n] = matriz[i][n+1]; //Segundo valor copiado para a posicao [n]
						matriz[i][n+1] = aux; //Posicao [n+1] recebe o valor de aux
					}
				}
			}
		}
		else{
			//Reordena de forma decrescente
			for(m = 0; m < colunas; m++){
				for(n = 0; n < colunas-1; n++){
					if(matriz[i][n] < matriz[i][n+1]){ //A única mudança é de '>' para '<'
						aux = matriz[i][n];
						matriz[i][n] = matriz[i][n+1];
						matriz[i][n+1] = aux;
					}
				}
			}
		}
    }

	//Loop para exibir a matriz
	printf("\nMatriz ordenada: \n\n");
	for(i = 0; i < linhas; i++){
			for(m = 0; m < colunas; m++)
				printf("%d ", matriz[i][m]); //Única instrução do for mais interno
			printf("\n"); //Esta instrição é executada após o for mais interno
	}

	//Copia elementos da matriz para uma matriz que possui o número de colunas igual ao número de elementos da matriz principal
	//elementos[0][i] tem os elementos do vetor e elementos[1][i] tem a quantidade de vezes que o elemento aparece
	int elementos[2][linhas*colunas];
	int numElementosUnicos = 0;
	for(int i = 0, k = 0; i < linhas; i++){ //Percorre as linhas da matriz principal
		for(int j = 0; j < colunas; j++){ //Percorre as colunas da matriz principal
			int encontrado = 0;
			for(int l = 0; l < k; l++){ //Percorre as colunas anteriores da matriz de elementos copiados
				if(elementos[0][l] == matriz[i][j]){ //Se o elemento já foi copiado
					elementos[1][l]++; //incrementa a quantidade de vezes que o elemento aparece
					encontrado = 1; //sinalia que o elemento foi encontrado
					break;
				}
			}
			if(!encontrado){ //Se o elemento não foi encontrado
				elementos[0][k] = matriz[i][j]; //copia o elemento para a matriz de elementos
				elementos[1][k] = 1; //inicializa a quantidade de vezes que o elemento aparece
				numElementosUnicos++; //incrementa o número de elementos únicos
				k++;
			}
		}
	}

	//Ordena a matriz de elementos copiados em ordem crescente
	for(int i = 0; i < numElementosUnicos; i++){
		for(int j = 0; j < numElementosUnicos-1; j++){
			if(elementos[0][j] > elementos[0][j+1]){
				auxMatriz[0][0] = elementos[0][j]; auxMatriz[1][0] = elementos[1][j];
				elementos[0][j] = elementos[0][j+1]; elementos[1][j] = elementos[1][j+1];
				elementos[0][j+1] = auxMatriz[0][0]; elementos[1][j+1] = auxMatriz[1][0];
			}
		}
	}

	printf("\nnumElementosUnicos: %d\n", numElementosUnicos);
	printf("\nElementos únicos da matriz: ");
	for(int i = 0; i < numElementosUnicos; i++)
		printf(" %d", elementos[0][i]);
	printf("\n");
	//Exibe a quantidade de vezes que cada elemento aparece
	for(int i = 0; i < numElementosUnicos; i++)
		printf("\nO elemento %d aparece %d vez(es)", elementos[0][i], elementos[1][i]);

	return 0;
}