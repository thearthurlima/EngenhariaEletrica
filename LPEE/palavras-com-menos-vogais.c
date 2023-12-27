#include <stdio.h>
#include <ctype.h>

#define MAX 100

int ehVogal(char letra) {
	char vogais[] = "AaEeIiOoUu";
	
	for(int i = 0; vogais[i] != '\0'; i++)
		if(letra == vogais[i])
			return 1;
			
	return 0;
}

int qtdVogaisPalavra(char string[MAX], int primLetra, int ultLetra) {
	int cont = 0;
	
	for(int i = primLetra; i <= ultLetra; i++)
		if(ehVogal(string[i]))
			cont++;
	
	return cont;
}

int menorQtdVogais(char string[MAX]) {
	int primLetra, ultLetra, qtdVogais, menos = MAX;
	
	for(int i = 0; string[i] != '\0'; i++) {
		if(isalpha(string[i])) {	//isalpha() verifica se o caractere é uma letra
			primLetra = i;
			for(int j = 0; isalpha(string[i+j]); j++)
				ultLetra = i+j;
				
			qtdVogais = qtdVogaisPalavra(string, primLetra, ultLetra);
			
			if(qtdVogais < menos)
				menos = qtdVogais;
				
			i = ultLetra;
		}
	}
	
	return menos;
}

void imprimirPalavras(char string[MAX]) {
	int primLetra, ultLetra, qtd = menorQtdVogais(string);
	
	printf("\n\tMenor quantidade de vogais em uma palavra: %d", qtd);
	printf("\n\tPalavra[s] com %d vogais:", qtd);
	
	for(int i = 0; string[i] != '\0'; i++) {
		if(isalpha(string[i])) {
			primLetra = i;
			for(int j = 0; isalpha(string[i+j]); j++)
				ultLetra = i+j;
			
			if(qtdVogaisPalavra(string, primLetra, ultLetra) == qtd) {
				printf("\n\t-");
				for(int k = primLetra; k <= ultLetra; k++)
					printf("%c", string[k]);
			}
				
			i = ultLetra;
		}
	}
}

void explicarPrograma() {
	printf("\n\tEste programa recebe uma string e imprime as");
	printf("\n\tpalavras que contenham o menor numero de vogais.");
	printf("\n\tExemplo: \"Da torrente e da fonte, do penhasco vermelho do monte\"");
	printf("\n\n\tPalavra[s] com 1 vogais: ");
	printf("\n\t-Da\n\t-e\n\t-da\n\t-do\n\t-do\n\n");
}

int main() {
	char str[MAX];
	int cont = 0;
	
	explicarPrograma(); 
	
	printf("Digite uma string: ");
	fgets(str, MAX, stdin);
	imprimirPalavras(str);
	
	return 0;
}