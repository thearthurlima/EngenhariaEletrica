// Concatenar duas strings.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main() {
	char string1[MAX], string2[MAX], concatString[2*MAX];
	int i, j;
	
	printf("Digite a primeira string:\n");
	fgets(string1, MAX, stdin);
	printf("\nDigite a segunda string:\n");
	fgets(string2, MAX, stdin);
	
	for(i = 0; string1[i] != '\0'; i++) { //Coloca a string1 em concatstring
		concatString[i] = string1[i];
	}
	
	for(i = strlen(string1)-1, j = 0; string2[j] != '\0'; i++, j++) { //Coloca a string2 em concatstring
		concatString[i] = string2[j];
		concatString[i+1] = '\0';
	}
	
	printf("\nString concatenada:\n%s", concatString);
}
