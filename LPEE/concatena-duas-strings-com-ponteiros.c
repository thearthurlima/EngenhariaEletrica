#include <stdio.h>

#define MAX 100

// Function prototypes
void copiarString(char *p, char *p2);
void concatString(char *p, char *p2);
void removerEnter(char *p);
int tamString(char *p);
void ordenarCrescente(char *p);

int main() {
    char string[MAX], string2[MAX], stringConcat[MAX];

    fgets(string, MAX, stdin);
    fgets(string2, MAX, stdin);

    removerEnter(string);
    removerEnter(string2);

    concatString(string, string2);
    tamString(string);

    printf("\nstringConcat:\n%s", string);

    ordenarCrescente(string);

    printf("\n\n%s", string);

    return 0;
}

// Function definitions
void copiarString(char *p, char *p2) {
    while (*p != '\0') {
        *p2 = *p;
        p++;
        p2++;
    }
    *p2 = '\0';
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
    int i, j;
    char *d, *primPos, aux;

    primPos = p;

    for (i = 0; i < tamString(primPos); i++) {
        d = primPos;
        while (*d != '\0') {
            if (*d < *(d + 1)) {
                aux = *d;
                *d = *(d + 1);
                *(d + 1) = aux;
            }
            d++;
        }
    }
}