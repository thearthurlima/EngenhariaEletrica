#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int tamString(char string[MAX]) {
	int i = 0;
	
	while(string[i] != '\0')
		i++;
		
	return i;
}

int contaCaractere(char string[MAX], char caractere) {
	int i = 0, contagem = 0, tamanho;
	
	tamanho = tamString(string);
	
	while(i <= tamanho) {
		if(string[i] == caractere)
			contagem++;
		i++;
	}
	
	return contagem;
} 

int main() {
	char string[MAX], caractere;
	
	fgets(string, MAX, stdin);
	scanf("%c", &caractere);
	
	printf("tamString: %d", tamString(string));
	printf("\ncontagemCaractere: %d", contaCaractere(string, caractere));
	
}