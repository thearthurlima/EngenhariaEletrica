# Sumário

- [1. Exercícios propostos](#1-exercícios-propostos)
- [2. Resoluções dos exercícios](#2-resoluções-dos-exercícios)
- [3. Funções e blocos de código úteis](#3-funções-e-blocos-de-código-úteis)

## 1. Exercícios propostos

Nesta lista estão alguns exercícios propostos pelo professor da disciplina, por alunos e por mim. As questões marcadas com "⚡" já foram questões de prova ou estão no nível de questões de prova. Após esta seção você encontrará resoluções para estes exercícios.

**1) Dado um vetor com valores digitados pelo usuário, encontre:**

a) Frequência que cada elemento aparece no vetor;

b) A média, a mediana (organizar o vetor) e a moda;

c) Maior e menor valor.

**2) Dada uma matriz de inteiros com valores digitados pelo usuário:**

a) Achar a matriz transposta (sem alterar a matriz original);

b) Organizar a diagonal principal da matriz original de forma crescente;

c) Organizar a diagonal principal da matriz original de forma decrescente.

**3) Dada uma matriz A, verificar se uma matriz B está contida na matriz A. Se sim, mostrar as coordenadas e dizer quantas vezes a matriz aparece.**

**4) Dadas duas strings digitadas pelo usuário, o usuário digita um caractere que pode existir na string 1, caso exista, onde houver esse caractere na string 1, a string 2 é adicionada.**

Ex.: String 1 - a a b a

String 2 - xxxx

String resultante - xxxx xxxx b xxxx

**5) Concatenar duas strings.**

**6) Contar quantas vogais, consoantes, dígitos e caracteres especiais aparecem na string.**

**7) Remover todos os caracteres de uma string, exceto as letras.**

**8) Achar substring dentro de uma string maior e mostrar quantas vezes a substring aparece.**

Ex.: ana banana

A substring "ana" aparece 3 vezes

**9) Imprimir padrões de asteriscos abaixo com número de linhas inserido pelo usuário:**

```bash
Padrão 1:

*
* *
* * *
* * * *
```
```bash
Padrão 2: 

* * * *
* * *
* *
*  
```
```bash
Padrão 3: 

      *
    * * *
  * * * * *
* * * * * * *
```

**10) Dada uma matriz de caracteres, achar palíndromos de no máximo 3 caracteres (horizontal, vertical). (Bônus: encontrar nas diagonais)**

**11) Inverter uma matriz dada pelo usuário.**

**12) Dada uma string fornecida pelo usuário:**

a) As letras maiúsculas ficam minúsculas;

b) As letras minúsculas ficam maiúsculas;

c) Números são substituídos por asteriscos.

**13) Dada uma string do usuário, colocar as letras maiúsculas na frente e minúsculas atrás.**

Ex.: "aAbBcC" - "ABCabc"

**14) Dada uma string numérica.**

a) Achar palíndromos de 3, 5 e 7 caracteres e contar quantos existem;

b) Imprimir a string colocando asterisco onde **não** é palíndromo e organizando os palíndromos em ordem crescente;

c) Imprimir a string colocando asterisco nos palíndromos e organizando o resto em ordem decrescente.

**⚡ 15) Dada uma string, encontrar a maior palavra, toda palavra que tiver esse tamanho deve ser organizada alfabeticamente.**

Ex.: "uma string qualquer" - "uma string aelqqruu"

**⚡ 16) Dada uma string, encontrar o maior palíndromo e substituí-lo por um asterisco.**

Ex.: "arara ovo de arara" - "* ovo de *"

**17) Dada uma string, faça um programa que realize as ações abaixo:**

a) Função que retorne o tamanho da string;

b) Função que conte quantas vezes um caractere específico aparece na string; 

c) Função que mostre as posições que o caractere aparece na string.

 OBS.: As funções dos itens **b** e **c** devem chamar a função do item **a**.

**18) Um programa que some duas matrizes.**

**19) Um programa que use uma função que troque o valor de x por y que estão declaradas na main.**

**20) Usando funções, faça um programa que ordene um vetor de inteiros de forma crescente e decrescente.**

**⚡ 21) Dada uma matriz de caracteres, encontrar nas linhas e colunas uma palavra digitada pelo usuário. (BÔNUS: encontrar nas diagonais)**


Ex.: 
```bash
 a  n  a
 n  a  n
 a  n  a
```
A palavra "ana" aparece 2 vezes nas linhas e 2 vezes nas colunas.

**22) Crie um programa que tenha:**

a) Uma função para ler uma string, sem usar fgets, gets, scanf("%s", ...), entre outras funções que já realizam esse procedimento;

b) Uma função para exibir essa string, sem usar puts, printf("%s", ...), entre outras funções que já realizam esse procedimento.

**⚡ 23) Crie um programa que leia um vetor char e adicione uma certa quantidade de asteriscos sempre que um certo caractere aparecer no vetor.**

Ex.: Adicionar **4** asteriscos quando o caractere **'2'** 

Entrada: vetor[] = e 2 u f v a 2 m

Saída: vetor[] = e \* \* \* \* u f v a \* \* \* \* m

**⚡ 24) Crie um programa que leia um vetor char e adicione um único asterisco sempre que um conjunto de caracteres aparecer no vetor.**

Ex.: Adicionar '*' sempre que "eai" aparecer

Entrada: vetor[] = 5 e a i e s f e a i f v

Saída: vetor[] = 5 \* e s f \* f v

**25) Crie um programa que faça o cadastro de 3 alunos utilizando structures. O programa deve ter:**

a) Uma função para ler os dados dos alunos;

b) Uma função para imprimir os dados dos alunos.

**26) Crie um programa que copie uma string em uma string secundária usando notação de ponteiros.**

**27) Crie um programa que concatene duas strings e organize a string concatenada em ordem crescente e depois em ordem decrescente usando notação de ponteiros.**

___
## 2. Resoluções dos exercícios

|     | Código  | Assuntos  |
| :--: | ----------- | --------- |
| 1 |  ||
| 2 | [matriz-transposta-&-ordena-diagonal-principal.c][QUESTAO_02] |**Funções**, **Matrizes**|
| 3 |  ||
| 4 | [imprime-string-quando-caractere-aparece.c][QUESTAO_04]|**Strings**|
| 5 | [concatena-duas-strings.c][QUESTAO_05]|**Strings**, manipulação de strings|
| 6 | [conta-vogais-consoantes-digit-caract-string.c][QUESTAO_06]|**Strings**, vetor de caracteres|
| 7 | [remove-caracteres-string-exceto-letras][QUESTAO_07]|**Strings**, manipulação de strings|
| 8 | [busca-substring.c][QUESTAO_08]|**Strings**, substrings|
| 9 | [imprime-padroes-de-asteriscos.c][QUESTAO_09]||
| 10 |  ||
| 11 | [inverte-linhas-matriz.c][QUESTAO_11] |**Matrizes**, manipulação de matrizes|
| 12 | [inverte-maiusculas-minusculas-&-censura-numeros.c][QUESTAO_12] |**Strings**|
| 13 | [separa-maiusculas-minusculas-&-concatena.c][QUESTAO_13] |**Strings**, manipulação de strings|
| 14 |  ||
| 15 | [ordena-maior-palavra-string.c][QUESTAO_15] |⚡ **Strings**, manipulação de strings|
| 16 | [substitui-maior-palindromo-por-asterisco.c][QUESTAO_16] |⚡ **Strings**, palíndromos, manipulação de strings|
| 17 | [encontra-caractere-em-string.c][QUESTAO_17]|**Funções**, **Strings** |
| 18 | [soma-duas-matrizes.c][QUESTAO_18]|**Funções**, **Matrizes**|
| 19 | [troca-valores-usando-ponteiros.c][QUESTAO_19]|**Funções**, **Ponteiros**|
| 20 | [ordena-vetor-ordem-crescente-&-decrescente.c][QUESTAO_20]|**Funções**, **Vetores**, manipulação de vetores|
| 21 | [encontrar-palavra-linhas-colunas-&-diagonais-da-matriz.c][QUESTAO_21]|⚡ **Funções**, **Matrizes**, limpeza de buffer de entrada|
|22|[le-&-exibe-string-sem-usar-fgets.c][QUESTAO_22]| **Funções**, **Strings**|
|23|[adiciona-asteriscos-em-caractere.c][QUESTAO_23]| ⚡ **Funções**, **Vetores**, manipulação de vetores|
|24|||⚡|
|25|[cadastro-de-alunos.c][QUESTAO_25]| **Structures**, **Funções**, **Vetores**|
26|[copia-string-com-ponteiros.c][QUESTAO_26]|**Funções**, **Ponteiros**, **Strings**|
|27|[concatena-duas-strings-com-ponteiros.c][QUESTAO_27]|**Funções**, **Ponteiros**, **Strings**, manipulação de strings|

## 3. Funções e blocos de código úteis

| Função | Descrição |
|-------|-------|
|[Limpar buffer de entrada](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/limparBufferEntrada.c)| Em algumas situações, quando uma leitura é realizada, o caractere de nova linha ('\n') pode permanecer no buffer de entrada. Isso pode impedir que leituras subsequentes sejam realizadas corretamente, interferindo no funcionamento adequado do algoritmo. **Utilize esta função caso encontre dificuldades para efetuar uma leitura corretamente após ter realizado uma leitura prévia.**
|[fflush()](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/fflush.c)|Serve ao mesmo propósito da função limparBufferEntrada(), entretanto, a função fflush() pode não funcionar corretamente todas as vezes, porque seu propósito principal é limpar buffers de saída.
|[Incluir caracteres da língua portuguesa](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/adicionar-caracteres-portugues.c)| Por padrão, não é possível visualizar caracteres específicos da língua portuguesa, como acentos, cedilhas e tils. **Adicione este segmento de código no seu programa para conseguir ler e exibir esses caracteres adicionais.**

<!-- links -->
[QUESTAO_02]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/matriz-transposta-%26-ordena-diagonal-principal.c
[QUESTAO_04]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/imprime-string-quando-caractere-aparece.c
[QUESTAO_05]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/concatena-duas-strings.c
[QUESTAO_06]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/conta-vogais-consoantes-digit-caract-string.c
[QUESTAO_07]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/remove-caracteres-string-exceto-letras.c
[QUESTAO_08]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/busca-substring.c
[QUESTAO_09]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/imprime-padroes-de-asteriscos.c
[QUESTAO_11]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/inverte-linhas-matriz.c
[QUESTAO_12]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/inverte-maiusculas-minusculas-%26-censura-numeros.c
[QUESTAO_13]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/separa-maiusculas-minusculas-%26-concatena.c
[QUESTAO_15]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/ordena-maior-palavra-string.c
[QUESTAO_16]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/substitui-maior-palindromo-por-asterisco.c
[QUESTAO_17]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/encontra-caractere-em-string.c
[QUESTAO_18]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/soma-duas-matrizes.c
[QUESTAO_19]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/troca-valores-usando-ponteiros.c
[QUESTAO_20]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/ordena-vetor-ordem-crescente-&-decrescente.c
[QUESTAO_21]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/encontrar-palavra-linhas-colunas-%26-diagonais-da-matriz.c
[QUESTAO_22]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/le-%26-exibe-string-sem-usar-fgets.c
[QUESTAO_23]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/adiciona-asteriscos-em-caractere.c
[QUESTAO_25]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/cadastro-de-alunos.c
[QUESTAO_26]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/copia-string-com-ponteiros.c
[QUESTAO_27]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/concatena-duas-strings-com-ponteiros.c
