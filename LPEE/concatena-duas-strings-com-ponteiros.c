#include <stdio.h>

#define MAX 100

void concatString(char *p, char *p2);
void removerEnter(char *p);
int tamString(char *p);
void ordenarCrescente(char *p);
void ordenarDecrescente(char *p);
void explicarPrograma();

int main() {
    char string[MAX], string2[MAX], stringConcat[MAX];

    explicarPrograma();
	
    printf("\nDigite a primeira string: ");
    fgets(string, MAX, stdin);
    removerEnter(string);
    printf("Digite a segunda string: ");
    fgets(string2, MAX, stdin);
    removerEnter(string2);

    concatString(string, string2);
    
    printf("\n\t+ String concatenada:\n\t%s", string);

    ordenarCrescente(string);
    printf("\n\t+ String em ordem crescente:\n\t%s", string);
    ordenarDecrescente(string);
    printf("\n\t+ String em ordem decrescente:\n\t%s", string);

    return 0;
}

void concatString(char *p, char *p2) {
    while (*p != '\0') {
        p++;
    }

    while (*p2 != '\0') {
        *p = *p2;
        p++;
        p2++;
    }
    *p = '\0';
}

void removerEnter(char *p) {
    while (*p != '\0')
        p++;
    p--;
    *p = '\0';
}

int tamString(char *p) {
    int i = 0;
    while (*p != '\0') {
        p++;
        i++;
    }
    return (i);
}

void ordenarCrescente(char *p) {
    int i, tam;
    char *d, aux;

    tam = tamString(p);

    for (i = 0; i < tam; i++) {
        d = p;
        while (*(d + 1) != '\0') {
            if (*d > *(d + 1)) {
                aux = *d;
                *d = *(d + 1);
                *(d + 1) = aux;
            }
            d++;
        }
    }
}

void ordenarDecrescente(char *p) {
    int i, tam;
    char *d, aux;

    tam = tamString(p);

    for (i = 0; i < tam; i++) {
        d = p;
        while (*(d + 1) != '\0') {
            if (*d < *(d + 1)) {
                aux = *d;
                *d = *(d + 1);
                *(d + 1) = aux;
            }
            d++;
        }
    }
}

void explicarPrograma() {
    printf("\n\tEste programa concatena duas strings usando ponteiros.");
	printf("\n\tDepois disso, ordena a string concatenada em ordem crescente");
	printf("\n\te em seguida, em ordem decrescente.\n");
}
