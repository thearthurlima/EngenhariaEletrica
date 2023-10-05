//12) Inverte uma matriz dada pelo usuário 

 #include <stdio.h> 
 #include <stdlib.h> 
 #include <string.h> 
  
 #define MAX 100 
  
 int main() 
 { 
         char string[MAX], stringaux[MAX]; 
         int tamanhoDaString = 0, k = 0; 

         printf("Digite uma string: ");
         fgets(string, MAX, stdin); 
  
         while(string[k] != '\0') //Pega o tmanho da string
         { 
                 tamanhoDaString++; 
                 k++; 
         } 
         tamanhoDaString--; 

         for(int i = 0, j = tamanhoDaString-1; i < tamanhoDaString; i++, j--) //Inverte a string principal na string auxiliar
         { 
                 stringaux[i] = string[j]; 
         } 
  
         for(int i = 0; string[i] != '\0'; i++) //Copia a string invertida na string principal
         { 
                 string[i] = stringaux[i]; 
         } 
  
         printf("String invertida: ");
         for(int i = 0; string[i] != '\0'; i++) //Exibe a string
         { 
                 printf("%c", string[i]); 
         }   
 }
