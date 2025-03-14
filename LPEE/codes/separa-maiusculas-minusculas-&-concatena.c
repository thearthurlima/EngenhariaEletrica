/* Dada uma string do usuário, colocar as letras
   maiúsculas na frente e minúsculas atrás.
   Ex.: "aAbBcC" vira "ABCabc". */

#include <stdio.h>
#include <string.h>

#define MAX 100

int main()
{
    char string[MAX] = "\0", minusculas[MAX] = "\0", maiusculas[MAX] = "\0", caracteres[MAX] = "\0";
    int i = 0, j = 0, k = 0, l = 0;
    
    printf("Digite uma string: ");
    fgets(string, MAX, stdin);
    
    // Separa as letras maiúsculas, minúsculas e caracteres
    while(string[i] != '\0') {
        if(string[i] >= 'a' && string[i] <= 'z') {
            minusculas[j] = string[i];
            minusculas[j+1] = '\0';
            j++;
        }
        
        else if(string[i] >= 'A' && string[i] <= 'Z') {
            maiusculas[k] = string[i];
            maiusculas[k+1] = '\0';
            k++;
        }
        
        else {
            caracteres[l] = string[i];
            caracteres[l+1] = '\0';
            l++;
        }
        
        i++;
    }
    
    for(i = 0; maiusculas[i] != '\0'; i++) {
        string[i] = maiusculas[i];
    }
    for(j = 0; minusculas[j] != '\0'; j++, i++) {
        string[i] = minusculas[j];
    }
    for(j = 0; caracteres[j] != '\0'; j++, i++) {
        string[i] = caracteres[j];
    }

    printf("\n%s", string);
}
