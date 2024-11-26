#include <stdio.h>

#define MAX 100

void copiarString(char *str, char *str2);
void imprimirString(char *str) ;
void explicarPrograma();

int main() {
	char str[MAX], str2[MAX];

	explicarPrograma();

	printf("Digite uma string: ");
	fgets(str, MAX, stdin);

	copiarString(str, str2);

	printf("String copiada: ");
	imprimirString(str2);

}

void copiarString(char *str, char *str2) {
	while (*str != '\0') {
		*str2 = *str;
		str++;
		str2++;
	}
	*str2 = '\0';
}

void imprimirString(char *str) {
	while (*str != '\0') {
		printf("%c", *str);
		str++;
	}
}

void explicarPrograma() {
	printf("\n\tEste programa copia uma string usando ponteiros.n\n\n");
}