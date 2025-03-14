#include <stdio.h>

#define MAX 100

void lerString(char *string);
void imprimirString(char *string);
int isPalindrome(char *string, int primLetra, int ultLetra);
int tamMenorPalindrome(char *str);
void ordenarCrescente(char *string, int primLetra, int ultLetra);
void ordenarDecrescente(char *string, int primLetra, int ultLetra);
void ordenarMenorPalindromo(char *str);
void explicarPrograma();

int main() {
	char str[MAX];

	explicarPrograma();

	printf("\nDigite uma string:\n");
	lerString(str);

	ordenarMenorPalindromo(str);

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

int tamMenorPalindrome(char *str) {
	int tamPalavra, tamMenorPalin = MAX, primLetra = 0, ultLetra = 0;
	int i, j;

	for(i = 0; str[i] != '\0'; i++) { //Percorre a string
		if(str[i] != ' ') {
			primLetra = i;
			for(j = 0; str[i+j] != ' ' && str[i+j] != '\0'; j++)
				ultLetra = i+j;
			
			tamPalavra = ultLetra - primLetra + 1;
			
			if(isPalindrome(str, primLetra, ultLetra)) {				
				if(tamPalavra < tamMenorPalin) {
					tamMenorPalin = tamPalavra;
				}
			}
			i = ultLetra;
		}
	}

	return tamMenorPalin;
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

void ordenarMenorPalindromo(char *str) {
    int tamMenorPalin = tamMenorPalindrome(str);
    int i, j, primLetra, ultLetra, tamPalavra;
    char strTemp[MAX];

	strncpy(strTemp, str, MAX); // Copia a string original para strTemp

    for(i = 0; str[i] != '\0'; i++) { //Percorre a string
        if(str[i] != ' ') {
            primLetra = i;
            for(j = 0; str[i+j] != ' ' && str[i+j] != '\0'; j++)
                ultLetra = i+j;
            
            tamPalavra = ultLetra - primLetra + 1;
            
            if(isPalindrome(str, primLetra, ultLetra) && tamPalavra == tamMenorPalin) {				
                ordenarCrescente(str, primLetra, ultLetra);
            }
            i = ultLetra;
        }
    }

	printf("\n\n\tMenor(es) palindromo(s) ordenado(s) em ordem crescente:\n\t");
	imprimirString(str);

	strncpy(str, strTemp, MAX); // Restaura a string original

	for(i = 0; str[i] != '\0'; i++) { //Percorre a string
		if(str[i] != ' ') {
			primLetra = i;
			for(j = 0; str[i+j] != ' ' && str[i+j] != '\0'; j++)
				ultLetra = i+j;
			
			tamPalavra = ultLetra - primLetra + 1;
			
			if(isPalindrome(str, primLetra, ultLetra) && tamPalavra == tamMenorPalin) {				
				ordenarDecrescente(str, primLetra, ultLetra);
			}
			i = ultLetra;
		}
	}

	printf("\n\tMenor(es) palindromo(s) ordenado(s) em ordem decrescente:\n\t");
	imprimirString(str);
	printf("\n\n");
}

void explicarPrograma() {
	printf("\n\tO programa recebe uma string e imprime a string com o(s) menor(es) palindromo(s) em ordem crescente e decrescente.\n");
	printf("\n\tExemplo:\n\t\tEntrada: \"natan ana natan eie\"");
	printf("\n\t\tSaida: \"natan aan natan eei\"\n");
	printf("\t\tSaída: \"natan naa natan iee\"\n");
}