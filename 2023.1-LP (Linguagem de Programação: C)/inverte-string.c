//Inverte uma matriz fornecida pelo usuário.

 #include <stdio.h> 
 #include <stdlib.h> 
 #include <string.h> 
  
 #define MAX 100 
  
 int main() 
 { 
        char string[MAX], stringaux[MAX], aux; 
        int tamanhoDaString = 0, i = 0, j = 0, k = 0; 

        printf("Digite uma string: ");
        fgets(string, MAX, stdin); 
  
		//Pega o tmanho da string sem contar o '\n'
        while(string[k] != '\n') { 
                tamanhoDaString++; 
                k++; 
        }
        
		//Inverte a string principal na string auxiliar
        for(i = 0, j = tamanhoDaString-1; i < tamanhoDaString; i++, j--) { 
                stringaux[i] = string[j]; 
        } 

		//Copia a string invertida na string principal
        for(i = 0; string[i] != '\0'; i++) { 
                string[i] = stringaux[i]; 
        }
        
        //Exibe a string invertida
        printf("String invertida: %s", string);
 }
