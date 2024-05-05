#include <stdio.h>

#define MAX 100

void explicarCodigo() { //Essa função só explica o código
    printf("\n	Dada uma string, este programa:\n\
        a) Calcula o tamanho da string;\n\
        b) Procura um caractere na string e conta quantas vezes o caractere aparece.\n\
	Exemplo: \"Uma string qualquer\" - O caractere 'r' aparece duas vezes.\n");
}

int tamString(char string[MAX]) { //Pega o tamanho da string, contando com o '\n' e o '\0'
	int i = 0;
	
	while(string[i] != '\0')
		i++;
		
	return i; //A função retorna a variável i, que é a última posição do vetor antes do '\0'
}

int contaCaractere(char string[MAX], char caractere) { 
	int i = 0, contagem = 0, tamanho; //Variável contagem inicializada com 0
	
	tamanho = tamString(string); //Chama a função tamString
	
	while(i < tamanho) {
		if(string[i] == caractere) //Verifica se a posição i do vetor é igual ao caractere
			contagem++; //Se for, soma +1 à variável contagem
		i++;
	}
	
	return contagem; //A função retorna a variável contagem
}

//Mesmo algoritmo da função contaCaractere, só muda o tipo de 'void' para 'int' e dentro do if
void mostraCoordenadas(char string[MAX], char caractere) {
	int i = 0, contagem = 0, tamanho;
	
	tamanho = tamString(string);
	
	while(i < tamanho) { 
		if(string[i] == caractere)
			printf("[%d]", i);
		i++;
	}
} 

int main() {
	char string[MAX], caractere;
	
	explicarCodigo();

	printf("\nDigite uma string: ");
	fgets(string, MAX, stdin);
	printf("Digite o caractere que deseja buscar na string: ");
	scanf("%c", &caractere);
	
	printf("\n	Tamanho da string: %d", tamString(string)); //Chama a função tamString já dentro do printf
	printf("\n	Numero de vezes que o caractere '%c': %d\n", caractere, contaCaractere(string, caractere)); //Chama a função contaCaractere já dentro do printf
	printf("	Coordenadas do caractere '%c': ", caractere);
	mostraCoordenadas(string, caractere); //Chama a função mostraCoordenada fora do printf, por se tratar de uma void
	
	return 0;
}
