#include <stdio.h>

#define MAX 100

void lerString(char *string);
void imprimirString(char *string);
int isPalindrome(char *string, int primLetra, int ultLetra);
void ordenarCrescente(char *string, int primLetra, int ultLetra);
void ordenarDecrescente(char *string, int primLetra, int ultLetra);
void ordenarPrimeiroPalindromo(char *str);
void explicarPrograma();

int main() {
	char str[MAX];
	
	explicarPrograma();

	printf("\nDigite uma string: ");
	lerString(str);

	ordenarPrimeiroPalindromo(str);

	return 0;
}

void lerString(char *string) {
    int i = 0;
    char c;

    while(i < MAX - 1 && (c = getchar()) != '\n' && c != EOF) {
        string[i] = c;
        i++;
    }
    string[i] = '\0';
}

void imprimirString(char *string) {
	int i = 0;
	
	while(*string != '\0') {
		printf("%c", *string);
		string++;
	}
}

int isPalindrome(char *string, int primLetra, int ultLetra) {
	int i = 0, flag = 1;
	
	while(primLetra < ultLetra) {
		if(string[primLetra] != string[ultLetra]) {
			flag = 0;
			break;
		}
		primLetra++;
		ultLetra--;
	}
	
	return flag;
}

void ordenarCrescente(char *string, int primLetra, int ultLetra) {
	int i, j, k;
	char aux;
	
	for(i = 0; i < ultLetra-primLetra+1; i++) {
		for(j = primLetra; j <= ultLetra; j++) {
			if(string[j] > string[j+1] && string[j+1] != ' ' && string[j+1] != '\0') {
				aux = string[j];
				string[j] = string[j+1];
				string[j+1] = aux;
			}
		}
	}
}

void ordenarDecrescente(char *string, int primLetra, int ultLetra) {
	int i, j, k;
	char aux;
	
	for(i = 0; i < ultLetra-primLetra+1; i++) {
		for(j = primLetra; j <= ultLetra; j++) {
			if(string[j] < string[j+1] && string[j+1] != ' ' && string[j+1] != '\0') {
				aux = string[j];
				string[j] = string[j+1];
				string[j+1] = aux;
			}
		}
	}
}

void ordenarPrimeiroPalindromo(char *str) {
    int primLetra = 0, ultLetra = 0;
    int i, j;

    for(i = 0; str[i] != '\0'; i++) { //Percorre a string
        if(str[i] != ' ') {
            primLetra = i;
            for(j = 0; str[i+j] != ' ' && str[i+j] != '\0'; j++)
                ultLetra = i+j;
            
            if(isPalindrome(str, primLetra, ultLetra)) {				
                printf("\n\tPrimeiro palindromo em ordem crescente:\n\t");
                ordenarCrescente(str, primLetra, ultLetra);
                imprimirString(str);

                printf("\n\n\tPrimeiro palindromo em ordem decrescente:\n\t");
                ordenarDecrescente(str, primLetra, ultLetra);
                imprimirString(str);
                printf("\n\n");
                break;
            }
            i = ultLetra;
        }
    }
}

void explicarPrograma() {
	printf("\n\tO programa recebe uma string e ordena a primeira palavra palindroma encontrada em ordem crescente e decrescente.\n");
	printf("\tExemplo:\n");
	printf("\tEntrada: \"uma string com ana e natan\"\n\t");
	printf("Saida: Primeiro palindromo em ordem crescente: uma string com aan e natan\n\t");
	printf("       Primeiro palindromo em ordem decrescente: uma string com nna e natan\n\n");
}