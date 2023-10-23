/*Dada uma string fornecida pelo usuário:
a) As letras minúsculas ficam maiusculas;
b) As letras maiusculas ficam minúsculas;
c) Números são substituídos por asteriscos.*/

#include <stdio.h>
#include <string.h>

#define MAX 100

int main()
{
	char string[MAX];
	int i = 0;
	
	printf("Digite uma string: ");
	fgets(string, MAX, stdin); //Pega a string
	
	for(i = 0; string[i] != '\0'; i++){
		if(string[i] >= 'A' && string[i] <= 'Z') //Maiúsculas ficam minúsculas
			string[i] += 32;
		else if(string[i] >= 'a' && string[i] <= 'z') //Minúsculas ficam maiúsculas
			string[i] -= 32;
		else if(string[i] >= '0' && string[i] <= '9') //Números viram asteriscos
			string[i] = '*';
	}
	
	i = 0;
	while(string[i] != '\0'){ //Exibe a string
		printf("%c", string[i]);
		i++;
	}
}
