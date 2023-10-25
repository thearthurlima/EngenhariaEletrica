#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

int main(){
	char string[MAX], tamanhoDaString;
	int i, j, k, l, primLetra, ultLetra, flag, contagem = 0;
	
	fgets(string, MAX, stdin);
	
	for(i = 0; string[i] != '\0'; i++){

		if(string[i] != ' '){ //Encontra primeira e última posição da palavra
			primLetra = i;
			for(j = i; string[j] != ' ' && string[j] != '\n' && string[j] != '\0'; j++)
				ultLetra = j;	
			printf("\n%d	%d", primLetra, ultLetra);
			
		
		for(k = primLetra; k <= l; k++){
			l = ultLetra;
			if(string[k] == string[l])
			flag++;
			l--;
		}
		
		if(flag == (k-l)*2)
			contagem++;
			
			i = ultLetra+1;
					
		}
	}
	
	printf("\n\n  contagem: %d", contagem);
}
	

	
