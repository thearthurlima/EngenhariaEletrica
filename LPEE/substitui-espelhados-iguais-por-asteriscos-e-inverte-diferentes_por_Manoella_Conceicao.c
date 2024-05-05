/* Autora: MANOELLA DA CONCEICAO
   Adaptacao: ARTHUR LIMA */ 

#include <stdio.h>

int main(){

    //QUESTAO 1:
    int DIMENSAO, i, j, copiaAux;

    printf("\nQuestao 1: Ordena a diagonal principal de uma matriz de forma decrescente.\n\n");

    printf("Insira a dimensao da matriz quadrada: ");

    do{
        scanf("%d", &DIMENSAO);
        if(DIMENSAO <= 0)
            printf("\nA dimensao da matriz nao pode ser negativa ou nula.\nInsira a dimensao da matriz quadrada: ");
    }while(DIMENSAO <= 0);

    int matriz[DIMENSAO][DIMENSAO], diagonalPrincipal[DIMENSAO];

    //PEGAR A MATRIZ
    printf("\nInsira os elementos da matriz, linha por linha:\n");
    for(i = 0; i < DIMENSAO; i++){
        printf("\nLinha %d:\n", i + 1);
        for(j = 0; j < DIMENSAO; j++)
            scanf("%d", &matriz[i][j]);
    }

    //COLOCA OS ELEMENTOS DA DIAGONAL PRINCIPAL EM UM VETOR
    for(i = 0; i < DIMENSAO; i++)
        diagonalPrincipal[i] = matriz[i][i];

    //ORDENAR OS ELEMENTOS DO VETOR
    for(i = 0; i < DIMENSAO; i++)
        for(j = 0; j < DIMENSAO; j++)
            if(diagonalPrincipal[i] > diagonalPrincipal[j]){
                copiaAux = diagonalPrincipal[i];
                diagonalPrincipal[i] = diagonalPrincipal[j];
                diagonalPrincipal[j] = copiaAux;
            }

    //COLOCA OS ELEMENTOS ORDENADOS DO VETOR NA DIAGONAL DA MATRIZ
    for(i = 0; i < DIMENSAO; i++)
        matriz[i][i] = diagonalPrincipal[i];

    //EXIBIR A MATRIZ ORGANIZADA
    printf("\n");
    printf("Matriz com a diagonal ordenada decrescentemente:\n");
    for(i = 0; i < DIMENSAO; i++){
        for(j = 0; j < DIMENSAO; j++)
            printf("  %d", matriz[i][j]);
        printf("\n");
    }

    //QUESTAO 2:
    int matrizAux[DIMENSAO][DIMENSAO];

    printf("\nQuestao 2: Verifica se os elementos espelhados em relacao a diagonal principal sao iguais.\n"
            "Se forem, substitui os dois por asteriscos, se nao forem, inverte a posicao dos dois.\n");

    printf("\nMatriz com posicoes trocadas e com asteriscos:\n");

    //COLOCA OS ELEMENTOS DA MATRIZ ORIGINAL NA MATRIZ AUXILIAR COLOCANDO '*' NOS SIMETRICOS IGUAIS E INVERTENDO OS DIFERENTES
    for(i = 0; i < DIMENSAO; i++){
        for(j = 0; j < DIMENSAO; j++){
            if(!(i == j && j == i)){
                if(matriz[i][j] == matriz[j][i])
                    matrizAux[i][j] = '*';
                else
                    matrizAux[i][j] = matriz[j][i];
            }
            else
                matrizAux[i][j] = matriz[i][j];
        }
    }

    //EXIBINDO A MATRIZ AUXILIAR
    for(i = 0; i < DIMENSAO; i++){
        for(j = 0; j < DIMENSAO; j++)
            if(matrizAux[i][j] == '*') //SE FOR UM ASTERISCOS
                printf("  %c", matrizAux[i][j]); //EXIBE COMO CARACTER
            else
                printf("  %d", matrizAux[i][j]); //SE NAO, EXIBE COMO UM INTEIRO
        printf("\n");
    }

    return 0;
}