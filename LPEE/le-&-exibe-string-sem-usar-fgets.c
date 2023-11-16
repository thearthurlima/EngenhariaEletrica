#include <stdio.h>

#define MAX 50

void explicarPrograma();
void scanString(char string[MAX], int tamMax);
void printString(char string[MAX]);

int main() {
	char string[MAX];
	
	explicarPrograma();
	
	printf("Digite uma string de no maximo %d caracteres:\n", MAX);
	scanString(string, MAX);
	printf("\nString lida:\n");
	printString(string);
	
	return 0;
}

void scanString(char string[MAX], int tamMax) {
    int i = 0;
    char c;
    
    while ((c = getchar()) != '\n' && i < tamMax - 1) {
        string[i] = c;
        i++;
    }
    string[i] = '\0';
}

void printString(char string[MAX]) {
	int i;
	
	for(i = 0;  string[i] != '\0'; i++)
		printf("%c", string[i]);
}

void explicarPrograma() {
	int i;
	
	printf("\n	Este programa le e exibe uma string \n	sem usar funcoes que ja realizam isso.\n	");
	for(i = 0; i <= 32; i++)
		printf("-");
	printf("\n\n");
}
