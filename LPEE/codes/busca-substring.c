/* Dada uma string fornecida pelo usuário,  
   encontrar uma substring também inserida pelo 
   usuário e mostrar quantas vezes a substring  
   aparece na string principal. */ 

#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
  
#define MAX 100 
  
int main() { 
    char string[MAX], subString[MAX]; 
    int i = 0, j = 0, flag = 0, contagem = 0, tamanhoDaSubstring = 0; 

    printf("Digite uma string: "); 
    fgets(string, MAX, stdin); 
  
    printf("Digite uma substring: "); 
    fgets(subString, MAX, stdin); 
  
    while (subString[i] != '\0') { 
        tamanhoDaSubstring++; 
        i++; 
    } 
    tamanhoDaSubstring--;

    // Retira '\n' da string principal
    for (i = 0; string[i] != '\0'; i++) {
        if (string[i] == '\n') {
            string[i] = '\0';
            string[i+1] = 0;
        }
    }
    // Retira '\n' da substring
    for (i = 0; subString[i] != '\0'; i++) {
        if (subString[i] == '\n') {
            subString[i] = '\0';
            subString[i+1] = 0;
        }
    }

    // Procura substring na string principal
    for (i = 0; string[i] != '\0'; i++) { 
        flag = 0; 
        j = 0; 

        while (subString[j] != '\0') { 
            if (string[i + j] == subString[j]) 
                flag++; 
            j++; 
        } 
        if (flag == tamanhoDaSubstring) 
            contagem++; 
    } 
         
    printf("\nNúmero de vezes que a substring aparece: %d", contagem);
}
