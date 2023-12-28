#include <stdio.h>
#include <ctype.h>

#define MAX 100

void converterMinuscula(char string[MAX]) {
    for(int i = 0; string[i] != '\0'; i++)
        if(string[i] >= 'A' && string[i] <= 'Z')
            string[i] = string[i] + 32;
}

int ehVogal(char letra) {
	char vogais[] = "aeiou";
	
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

int maiorQtdVogais(char string[MAX]) {
	int primLetra, ultLetra, qtdVogais, mais = 0;
	
	for(int i = 0; string[i] != '\0'; i++) {
		if(isalpha(string[i])) {	//isalpha() verifica se o caractere é uma letra
			primLetra = i;
			for(int j = 0; isalpha(string[i+j]); j++)
				ultLetra = i+j;
				
			qtdVogais = qtdVogaisPalavra(string, primLetra, ultLetra);
			
			if(qtdVogais > mais)
				mais = qtdVogais;
				
			i = ultLetra;
		}
	}
	
	return mais;
}

void imprimirPalavras(char string[MAX]) {
	int primLetra, ultLetra, qtd = maiorQtdVogais(string);
	
	printf("\n\tMaior quantidade de vogais em uma palavra: %d", qtd);
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
	printf("\n\tpalavras que contenham o maior numero de vogais.");
	printf("\n\tExemplo: \"Da torrente e da fonte, do penhasco vermelho do monte\"");
	printf("\n\n\tPalavra[s] com 3 vogais: ");
	printf("\n\t-torrente\n\t-penhasco\n\t-vermelho\n\n");
}

int main() {
	char str[MAX];
	int cont = 0;
	
	explicarPrograma(); 
	
	printf("Digite uma string: ");
	fgets(str, MAX, stdin);
	converterMinuscula(str);
	printf("\n\tString: %s", str);
	imprimirPalavras(str);
	
	return 0;
}