#include <stdio.h>

#define MAX 100

int main() {
	
	char string[MAX], stringAux[MAX];
	int i, j;
	
	printf("\n	Este programa pega uma string e remove todos os caracteres, exceto as letras.");
	printf("\n	Ex.: Entrada: \"essa e 1 string *qualquer*.\" - Saida: \"essaestringqualquer\"");
	
	printf("\n\nDigite uma string com letras e caracteres: ");
	fgets(string, MAX, stdin);
	
	i = 0;
	while(string[i] != '\0') { //Transforma tudo que não é letra em asterisco
		if((string[i] < 'a' || string[i] > 'z') && (string[i] < 'A' || string[i] > 'Z'))
			string[i] = '*';
		i++;
	}

	i = 0; 
	j = 0;
	while(string[i] != '\0') { //Copia a string em uma stringAux pulando os asteriscos
		while(string[i] == '*')
			i++;
		stringAux[j] = string[i];
		stringAux[j+1] = '\0'; //Adiciona o terminador de string
		i++;
		j++;
	}
	
	i = 0;
	while(stringAux[i] != '\0') { //Copia a stingAux para a string principal
		string[i] = stringAux[i];
		string[i+1] = '\0'; //Adicionad o terminador de string
		i++;
	}
		
		
	printf("\n%s", string);
	
	return 0;
}
