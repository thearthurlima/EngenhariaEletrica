#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main(){
	char string1[MAX], string2[] = "xxxx", caractere;
	int i, j, tamStr1, tamStr2;
	
	printf("String 1: ");
	fgets(string1, MAX, stdin);
	printf("String 2: ");
	fgets(string2, MAX, stdin);
	printf("Caractere: ");
	scanf("%c", &caractere);
	
	tamStr1 = strlen(string1)-1;
	tamStr2 = strlen(string2)-1;
	
	for(i = 0; i < tamStr1; i++){
		if(string1[i] == caractere)
		for(j = 0; j < tamStr2; j++)
			printf("%c", string2[j]);
		else
		printf("%c", string1[i]);
	}
}
