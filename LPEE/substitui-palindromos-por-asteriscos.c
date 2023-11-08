#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

void findwordposition(char string[MAX], int posicao, int *posicaoPrimLetra, int *posicaoUltLetra) {
    int j;

    *posicaoPrimLetra = posicao;
    for (j = 0; string[j + posicao] != ' ' && string[j + posicao] != '\n' && string[j + posicao] != '\0'; j++) {
        *posicaoUltLetra = j + posicao;
    }
}

int ispalindrome(char string[MAX], int posicaoPrimLetra, int posicaoUltLetra) {
    int i, flag = 1;

    for (i = posicaoPrimLetra; i < posicaoUltLetra; i++, posicaoUltLetra--) {
        if (string[i] != string[posicaoUltLetra]) {
            flag = 0;
            break;
        }
    }
    return flag;
}

void censorword(char string[MAX], int posicaoPrimLetra, int posicaoUltLetra) {
	int i;
    	
	for(i = posicaoPrimLetra; i <= posicaoUltLetra; i++)
		string[i] = '*';
}

void removeextraasterisks (char string[MAX]) {
	int i, j;
	char stringAux[MAX];
	
	for(i = 0, j = 0; string[i] != '\0'; i++, j++) {
		
		stringAux[j] = string[i];
		
		if(string[i] == '*') {
			while(string[i] == '*')
        		i++;
        	i--;
		}
	}
	
	stringAux[j] = '\0';
	
	for(i = 0; stringAux[i] != '\0'; i++) {
        	
        string[i] = stringAux[i];
        string[i+1] = '\0';

	}
}

int main() {
    char string[MAX];
    int i, primLetra = 0, ultLetra = 0;
    
	printf("\n	Este programa troca todos os palindromos de uma string por '*'.");
	printf("\n	Exemplo: \"um ovo de arara\" - \"um * de *\".\n");
	printf("\nDigite uma string: ");
    fgets(string, MAX, stdin);

    for (i = 0; string[i] != '\0'; i++) {
        if (string[i] != ' ' && string[i] != '\n') {
            findwordposition(string, i, &primLetra, &ultLetra);
			
			if(ispalindrome(string, primLetra, ultLetra))
				censorword(string, primLetra, ultLetra);
            
			i = ultLetra;
    	}
    }
    
    removeextraasterisks(string);
    
    printf("\n\n%s", string);

    return 0;
    
}
