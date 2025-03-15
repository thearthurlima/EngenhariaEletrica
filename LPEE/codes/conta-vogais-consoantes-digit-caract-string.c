/*Dada uma string fornecida pelo usuário, contar número de:
a) Vogais;
b) Consoantes;
c) Dígitos;
d) Caracteres especiais.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main()
{
	char string[MAX];
	int contConsoantes = 0, contVogais = 0, contDigitos = 0, contCaracteres = 0, contEspacos = 0;
	int i = 0, j = 0, tamanho;
	
	char vogais[] = {"AaEeIiOoUu"};
	char consoantes[] = {"BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz"};
	char digitos[] = {"1234567890"};
	
	printf("Digite uma string: ");
	fgets(string, MAX, stdin); //Pega a string
	tamanho = strlen(string)-1; //Pega tamanho da string
	
	for(i = 0; string[i] != '\0'; i++){
		j = 0;
		while(vogais[j] != '\0'){ //Conta vogais
			if(string[i] == vogais[j])
			contVogais++;
			j++;
		}
			
		j = 0;
		while(consoantes[j] != '\0'){ //Conta consoantes
			if(string[i] == consoantes[j])
			contConsoantes++;
			j++;
		}
		
		j = 0;
		while(digitos[j] != '\0'){ //Conta dígitos
			if(string[i] == digitos[j])
			contDigitos++;
			j++;
		}

		if(string[i] == 32) //Conta espaços
			contEspacos++;
			j++;
	}
	
	contCaracteres = tamanho - contVogais - contConsoantes - contDigitos - contEspacos; //Calcula caracteres especiais
	
	printf("\nVogais: %d\nConsoantes: %d\nDigitos: %d\nCaracteres especiais: %d\n", contVogais, contConsoantes, contDigitos, contCaracteres);
}
