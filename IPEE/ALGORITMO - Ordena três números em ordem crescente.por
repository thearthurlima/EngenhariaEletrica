/*
	Este programa solicita a entrada de três números reais do usuário
	e os organiza em ordem crescente usando o algoritmo bubble sort.
	Os números ordenados são então exibidos na tela.
*/

programa
{
	funcao inicio()
	{
		real numero1, numero2, numero3, auxiliar

		escreva("Digite o 1º número: ")
		leia(numero1)

		escreva("Digite o 2º número: ")
		leia(numero2)

		escreva("Digite o 3º número: ")
		leia(numero3)

		se(numero1 > numero2) //Compara o primeiro número com o segundo
		{
			auxiliar = numero1 //A variável auxiliar recebe o valor do 1ª número
			numero1 = numero2  //A variável numero1 recebe o valor do 2ª número
			numero2 = auxiliar //A variável numero2 recebe o valor da auziliar
		}

		se(numero2 > numero3) //Compara o segundo número com o terceiro
		{
			auxiliar = numero2 //auxiliar <- numero2
			numero2 = numero3 //numero2 <- numero3
			numero3 = auxiliar //numero3 <- auxiliar
		}

		se(numero1 > numero2) //Compara novamente o primeiro número com o terceiro
		{
			auxiliar = numero1 //auxiliar <- numero1
			numero1 = numero2 //numero1 <- numero2
			numero2 = auxiliar //numero2 <- auxiliar
		}
			
		escreva("\nOs números em ordem crescente são: ", numero1 ,", ", numero2, ", ", numero3, "\n")
	}
}