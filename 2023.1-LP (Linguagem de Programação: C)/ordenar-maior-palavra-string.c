#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main(){
	char string[MAX], aux;
	int i, j, k, l, primLetra, ultLetra, tamPalavra = 0, tamMaiorPalavra = 0, primLetraM, ultLetraM;

	fgets(string, MAX, stdin);
	
	for(i = 0; string[i] != '\0'; i++){ //Acha a primeira e ultima letra de todas as palavras
		if(string[i] != ' ' && string[i] != '\n'){
			primLetra = i;
			for(j = 0; string[i+j] != ' ' && string[i+j] != '\n' && string[i+j] != '\n'; j++){
				ultLetra = i+j;
			}
		tamPalavra = ultLetra-primLetra+1; //Encontra o tamanho da palavra
		if(tamPalavra > tamMaiorPalavra){ //Acha o tamanho da MAIOR palavra
			tamMaiorPalavra = tamPalavra;
			primLetraM = primLetra;
			ultLetraM = ultLetra;
		}

		i = ultLetra; //Recomeça o loop a partir da ultima letra da palavra +1
		}
	}
	
	for(i = 0; string[i] != '\0'; i++){ //Acha a primeira e ultima letra de todas as palavras
		if(string[i] != ' ' && string[i] != '\n'){
			primLetra = i;
			for(j = 0; string[i+j] != ' ' && string[i+j] != '\n' && string[i+j] != '\n'; j++){
				ultLetra = i+j;
			}
		tamPalavra = ultLetra-primLetra+1; //Encontra o tamanho da palavra
		if(tamPalavra == tamMaiorPalavra){ //Se o tamanho da palavra for igual ao tamanho da MAIOR palavra
			for(k = 1; k <= tamPalavra; k++){ //Organiza em ordem crescente
				for(l = primLetra; l < ultLetra; l++){
					aux = string[l];
					if(aux > string[l+1]){
						string[l] = string[l+1];
						string[l+1] = aux;
					}
				}
			}
		}
		
		i = ultLetra; //Recomeça o loop a partir da ultima letra da palavra +1 
		}
	}
	
	printf("\n%s", string);
}
