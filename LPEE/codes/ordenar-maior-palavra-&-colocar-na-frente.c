#include <stdio.h>

#define MAX 100

int maiorPalavra(char string[MAX]) {
	int primLetra, ultLetra, tamPalavra = 0, maiorPalavra = 0;
	int i, j;
	
	for(i = 0; string[i] != '\0'; i++) {
		if(string[i] != ' ' && string[i] != '\n') {
			primLetra = i;
			for(j = 0; string[i+j] != ' ' && string[i+j] != '\n' && string[i+j] != '\0'; j++) {
			ultLetra = i+j;
			}
			
			tamPalavra = ultLetra - primLetra + 1;
			if(tamPalavra > maiorPalavra) {
				maiorPalavra = tamPalavra;
			}
				
			i = ultLetra;
		}
	}
	
	return maiorPalavra;
}

int ordenarCrescente(char string[MAX], int maiorPalavra) {
	int primLetra, ultLetra, tamPalavra = 0;
	int i, j, k, l;
	char aux;
	
	for(i = 0; string[i] != '\0'; i++) {
		if(string[i] != ' ' && string[i] != '\n') {
			primLetra = i;
			for(j = 0; string[i+j] != ' ' && string[i+j] != '\n' && string[i+j] != '\0'; j++) {
			ultLetra = i+j;
			}
			
			tamPalavra = ultLetra - primLetra + 1;
			if(tamPalavra == maiorPalavra) {
				for(l = 1; l < tamPalavra; l++) {
					for(k = primLetra; k < ultLetra; k++) {
						if(string[k] > string[k+1] && string[k+1] != '\n' && string[k+1] != '\0') {
							aux = string[k];
							string[k] = string[k+1];
							string[k+1] = aux;
						}
					} 

				}
			}
				
			i = ultLetra;
		}
	}
}

int palavraNoInicio(char string[MAX], int maiorPalavra) {
	int primLetra, ultLetra, tamPalavra = 0;
	char aux, stringAux1[MAX] = "", stringAux2[MAX] = "";
	int i, j, k, l = 0, y = 0;
	
	for(i = 0; string[i] != '\0'; i++) {
		if(string[i] != ' ' && string[i] != '\n') {
			primLetra = i;
			for(j = 0; string[i+j] != ' ' && string[i+j] != '\n' && string[i+j] != '\0'; j++) {
			ultLetra = i+j;
			}
			
			tamPalavra = ultLetra - primLetra + 1;
			if(tamPalavra == maiorPalavra) { 			// Se a palavra for a maior
				for(k = 0; k < tamPalavra; k++) { 		// Copia a palavra para a stringAux1
					stringAux1[l] = string[i+k];
					l++;
				}
				stringAux1[l] = ' ';
				l++;
				stringAux1[l] = '\0';
				
			}
			else {										// Se a palavra não for a maior	
				for(k = 0; k < tamPalavra; k++) { 		// Copia a palavra para a stringAux2
					stringAux2[y] = string[i+k];
					y++;
				}
				stringAux2[y] = ' ';
				y++;
				stringAux2[y] = '\0';
			}
				
			i = ultLetra;
		}
	}
	
	for(i = 0; stringAux1[i] != '\0'; i++) { 			// Copia a stringAux1 para a string
		string[i] = stringAux1[i];
	}
	
	for(j = 0; stringAux2[j] != '\0'; j++) { 			// Copia a stringAux2 para a string
		string[i] = stringAux2[j];
		i++;
	}
	
	string[i] = '\0';

	return maiorPalavra;
}

void explicarPrograma() {
	printf("\n\tEste programa recebe uma string e a processa da seguinte forma:\n");
	printf("\t1 - Encontra a(s) maior(es) palavra(s) da string\n");
	printf("\t2 - Ordena as letras da(s) maior(es) palavra(s) em ordem crescente\n");
	printf("\t3 - Coloca a(s) maior(es) palavra(s) no inicio da string\n");
	printf("\t4 - Imprime a string processada\n\n");
	printf("\tExemplo:\n");
	printf("\tString: \"O rato roeu a roupa do rei de Roma\"\n");
	printf("\tString processada: \"aopru O rato roeu a do rei de Roma\"\n\n");
}

int main() {
	char str[MAX];
	int tamMaiorPalavra;
	
	explicarPrograma();

	printf("Digite uma string:\n");
	fgets(str, MAX, stdin);

	tamMaiorPalavra = maiorPalavra(str);
	
	ordenarCrescente(str, tamMaiorPalavra);
	palavraNoInicio(str, tamMaiorPalavra);

	printf("\nString processada: \n%s\n\n\n", str);
	
	return 0;
}