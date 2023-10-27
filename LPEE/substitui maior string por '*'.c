#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main () {
	char string[MAX];
	int i, j, k, flag, primLetra = 0, ultLetra = 0, tamPalavra = 0, tamMaiorPalindromo = 0, tamString = 0;
	
	fgets(string, MAX, stdin);
	
	for(i = 0; string[i] != '\0'; i++) { //Acha o tamanho do maior palindromo
		if(string[i] != ' ' && string[i] != '\n') {
			primLetra = i;
			for(j = 0; string[j+i] != ' ' && string[j+i] != '\n'; j++) {
				ultLetra = j+i;
			}
		
			tamPalavra = ultLetra - primLetra + 1;
			
			flag = 1;
			for(k = 0; k < tamPalavra/2; k++) {
				if(string[primLetra+k] != string[ultLetra-k])
				flag = 0;
				break;
			}
			
			if(flag == 1) {
				if(tamPalavra > tamMaiorPalindromo)
					tamMaiorPalindromo = tamPalavra;
		}
		}
		
		i = ultLetra+1;

	}
	for(i = 0; string[i] != '\0'; i++) { //Substitui as letras do maior palindromo por *
		if(string[i] != ' ' && string[i] != '\n') {
			primLetra = i;
			for(j = 0; string[j+i] != ' ' && string[j+i] != '\n'; j++) {
				ultLetra = j+i;
			}
		
			tamPalavra = ultLetra - primLetra + 1;
			
			flag = 1;
			for(k = 0; k < tamPalavra/2; k++) {
				if(string[primLetra+k] != string[ultLetra-k])
				flag = 0;
				break;
			}
			
			if(flag == 1 && tamPalavra == tamMaiorPalindromo) {
				for(k = primLetra; k <= ultLetra; k++) {
					string[k] = '*';
				}
			}
		}
		
		i = ultLetra+1;

	}
	
	/*for(i = 0; string[i] != '\0'; i++) { //Tira os asteriscos restantes
		if(string[i] == '*' && string[i+1] == '*') {
			for(k = i; string[k] != ' ' && '\n' && '\0'; k++) {
				string[k] = string[k+1];
			}
		}
	}*/
	
	tamString = strlen(string);
	
	for(i = 0; string[i] != '\0'; i++) { //Retira asteriscos sobrando
		if(string[i] == '*' && string[i+1] == '*') {
			primLetra = i;
			for(j = 0; string[j+i] != ' ' && string[j+i] != '\n'; j++) {
				ultLetra = j+i;
			}
		
			tamPalavra = ultLetra - primLetra + 1;
			
			//printf("\n\nnumDeAsteriscos: %d", tamPalavra);
			
			for(k = ultLetra; k< (tamPalavra-primLetra-1); k++){
				string[k] = string[k+1];
			}
			
			i = ultLetra+1;
		}			
	}
	
	printf("\n%s", string);
	
	
}
