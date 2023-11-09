#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

void explicarCodigo() {
    printf("\n	Dada uma string, este programa:\n\
        a) Calcula o tamanho da string;\n\
        b) Procura um caractere na string e conta quantas vezes o caractere aparece.\n\
	Exemplo: \"Uma string qualquer\" - O caractere 'r' aparece duas vezes.\n");
}

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
	
	explicarCodigo();

	printf("\nDigite uma string: ");
	fgets(string, MAX, stdin);
	printf("Digite o caractere que deseja buscar na string: ");
	scanf("%c", &caractere);
	
	printf("\nTamanho da string: %d", tamString(string));
	printf("\nO caractere '%c' aparece %d vezes.\n", caractere, contaCaractere(string, caractere));
	
	return 0;
}