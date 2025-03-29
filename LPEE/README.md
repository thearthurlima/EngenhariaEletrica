# Linguagem de Programação (DEIN0022)

<img
src="https://portalpadrao.ufma.br/site/institucional/superintendencias/sce/manual-da-marca/png-logo-ufma-colorido.png/@@images/image.png"
width="170" align="right">
</a>

A disciplina Linguagem de Programação (EE) utiliza a linguagem C, uma linguagem de grande relevância na engenharia pela sua versatilidade. Em uma disciplina como essa, a prática é fundamental para um bom desempenho, por isso, ao longo do semestre, reuni um acervo significativo de atividades que desempenharam papel essencial na minha aprovação.

O material a seguir foi muito utilizado pelos meus colegas de turma e também serviu como base para as aulas de monitoria que ministrei no semestre seguinte. Além disso, continua sendo uma fonte de apoio para os novos alunos de LP. Neste material, você encontrará exercícios e questões de prova, para que você pratique algoritmos que envolvem vetores, strings e matrizes, ponteiros, além de se familiarizar com bugs recorrentes na resolução desses problemas. 

|Outros repositórios para essa disciplina|
|------------------|
|[Repositório de Eduardo Fonseca](https://github.com/edubr029/ufma/tree/main/LPEE)|
|[Repositório de Maísa Garcia](https://github.com/maisagarcx/LP)|

> **Se você encontrar algum erro, tiver sugestões de resolução ou quiser indicar novos exercícios, entre em contato pelo e-mail:** [santos.arthur@discente.ufma.br](mailto:aadasdasd@gmail.com)

# Sumário

- [1. Exercícios propostos](#1-exercícios-propostos)
- [2. Resoluções dos exercícios](#2-resoluções-dos-exercícios)
- [3. Funções e blocos de código úteis](#3-funções-e-blocos-de-código-úteis)

## 1. Exercícios propostos

Nesta lista estão alguns exercícios propostos pelo professor da disciplina, por alunos e por mim. As questões marcadas com "⚡" já foram questões de prova ou estão no nível de questões de prova. Após esta seção você encontrará resoluções para estes exercícios.

---

**1) Dado um vetor com valores digitados pelo usuário, encontre a frequência com que cada elemento aparece nele.**

---

**2) Dada uma matriz de inteiros com valores digitados pelo usuário:**

a) Achar a matriz transposta (sem alterar a matriz original);

b) Organizar a diagonal principal da matriz original de forma crescente;

c) Organizar a diagonal principal da matriz original de forma decrescente.

---

**3) Dada uma matriz A, verificar se uma matriz B está contida na matriz A. Se sim, mostrar as coordenadas e dizer quantas vezes a matriz aparece.**

---

**4) Dadas duas strings digitadas pelo usuário, o usuário digita um caractere que pode existir na string 1, caso exista, onde houver esse caractere na string 1, a string 2 é adicionada.**

```bash
Ex.: String 1: a a b a

String 2: xxxx

Saída: xxxx xxxx b xxxx
```

---

**5) Concatenar duas strings.**

---

**6) Contar quantas vogais, consoantes, dígitos e caracteres especiais aparecem na string.**

---

**7) Remover todos os caracteres de uma string, exceto as letras.**

---

**8) Achar substring dentro de uma string maior e mostrar quantas vezes a substring aparece.**

```bash
Ex.: ana banana

A substring "ana" aparece 3 vezes
```

---

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
---

**10) Dada uma matriz de caracteres, achar palíndromos de no máximo 3 caracteres (horizontal, vertical). (Bônus: encontrar nas diagonais)**

---

**11) Inverter uma matriz dada pelo usuário.**

---

**12) Dada uma string fornecida pelo usuário:**

a) As letras maiúsculas ficam minúsculas;

b) As letras minúsculas ficam maiúsculas;

c) Números são substituídos por asteriscos.

---

**13) Dada uma string do usuário, colocar as letras maiúsculas na frente e minúsculas atrás.**

```bash
Exemplo:

Entrada: "aAbBcC"
Saída: "ABCabc"
```

---

**14) Dada uma string numérica.**

a) Achar palíndromos de 3, 5 e 7 caracteres e contar quantos existem;

b) Imprimir a string colocando asterisco onde **não** é palíndromo e organizando os palíndromos em ordem crescente;

c) Imprimir a string colocando asterisco nos palíndromos e organizando o resto em ordem decrescente.

---

**⚡ 15) Dada uma string, encontrar a maior palavra, toda palavra que tiver esse tamanho deve ser organizada alfabeticamente.**

```bash
Exemplo:

Entrada: "uma string qualquer"
Saída: "uma string aelqqruu"
```

---

**⚡ 16) Dada uma string, encontrar o maior palíndromo e substituí-lo por um asterisco.**

```bash
Exemplo:

Entrada: "arara ovo de arara"
Saída: "* ovo de *"
```

---

**17) Dada uma string, faça um programa que realize as ações abaixo:**

a) Função que retorne o tamanho da string;

b) Função que conte quantas vezes um caractere específico aparece na string; 

c) Função que mostre as posições que o caractere aparece na string.

 OBS.: As funções dos itens **b** e **c** devem chamar a função do item **a**.

---

**18) Um programa que some duas matrizes.**

---

**19) Um programa que use uma função que troque o valor de x por y que estão declaradas na main.**

---

**20) Usando funções, faça um programa que ordene um vetor de inteiros de forma crescente e decrescente.**

---

**⚡ 21) Dada uma matriz de caracteres, encontrar nas linhas e colunas uma palavra digitada pelo usuário. (BÔNUS: encontrar nas diagonais)**

```bash
Exemplo: 

 a  n  a
 n  a  n
 a  n  a

A palavra "ana" aparece 2 vezes nas linhas e 2 vezes nas colunas.
```

---

**22) Crie um programa que tenha:**

a) Uma função para ler uma string, sem usar fgets, gets, scanf("%s", ...), entre outras funções que já realizam esse procedimento;

b) Uma função para exibir essa string, sem usar puts, printf("%s", ...), entre outras funções que já realizam esse procedimento.

---

**⚡ 23) Crie um programa que leia um vetor char e adicione uma certa quantidade de asteriscos sempre que um certo caractere aparecer no vetor.**

```bash
Ex.: Adicionar 4 asteriscos quando o caractere '2' 

Entrada: vetor[] = e 2 u f v a 2 m
Saída: vetor[] = e * * * * u f v a * * * * m
```

---

**⚡ 24) Crie um programa que leia um vetor char e adicione um único asterisco sempre que um conjunto de caracteres aparecer no vetor.**

```bash
Ex.: Adicionar '*' sempre que "eai" aparecer

Entrada: vetor[] = 5 e a i e s f e a i f v
Saída: vetor[] = 5 * e s f * f v
```

---

**25) Crie um programa que faça o cadastro de 3 alunos utilizando structures. O programa deve ter:**

a) Uma função para ler os dados dos alunos;

b) Uma função para imprimir os dados dos alunos.

---

**26) Crie um programa que copie uma string em uma string secundária usando notação de ponteiros.**

---

**27) Crie um programa que concatene duas strings e organize a string concatenada em ordem crescente e depois em ordem decrescente usando notação de ponteiros.**

---

**⚡ 28) Crie um programa que ordene o(s) menor(es) palíndromo(s) de uma string de forma crescente e de forma decrescente. O programa deve ter as seguintes funções:**

a) Uma função para ler a string;

b) Uma função que ache o(s) menor(es) palíndromo(s);

c) Uma função para ordenar o(s) menor(es) palíndromo(s) em ordem crescente;

d) Uma função para ordenar o(s) menor(es) palíndromo(s) em ordem decrescente;

e) Uma função para imprimir a string.

---

**⚡ 29) Crie um programa que ordene o primeiro palíndromo de uma string de forma crescente e de forma decrescente. O programa deve ter as seguintes funções:**

a) Uma função para ler a string;

b) Uma função que ache o primeiro palíndromo;

c) Uma função para ordenar o palíndromo em ordem crescente;

d) Uma função para ordenar o palíndromo em ordem decrescente;

e) Uma função para imprimir a string.

---

**⚡ 30) Crie um programa que imprima uma cruz de asteriscos, com número de linhas definido pelo usuário (o número deve ser ímpar). O programa deve ter as seguintes funções:**

a) Uma função para ler um número inteiro;

b) Uma função que verifique se o número é ímpar;

c) Função que imprime o padrão de asteriscos.

```bash
Exemplo: 5 linhas

    *
    *
* * * * *
    *
    *
```

---

**⚡ 31) Crie um programa que imprima um retângulo de asteriscos, com número de linhas e colunas definido pelo usuário. O programa deve ter as seguintes funções:**

a) Uma função para ler um número inteiro;

c) Função que imprime o padrão de asteriscos.

```bash
Exemplo: 5 linhas e 4 colunas

* * * *
*     *
*     *
*     *
* * * *
```

---

**⚡ 32) Crie um programa que, dada uma string:**

a) Ache a(s) maior(es) palavra(s);

b) Ordene a(s) maior(es) palavra(s) em ordem crescente;

c) Coloque a(s) maior(es) palavra(s) no início da string;

d) Imprima a string.

```bash
Exemplo: 

Entrada: joana e bonita
Saída: abinot joana e
```

---

**⚡ 33) Dada uma matriz e inteiros quadrada, faça um programa que:**

a) Tenha uma função para ler um inteiro;

b) O usuário digita um itinerário, que será as coordenadas dos números da matriz. Cada número obtido pelas coordenadas do itinerário é adicionado a uma soma, que é exibida ao final;

```bash
Exemplo:

  matriz[3][3] = 1  2  3
                 4  5  6
                 7  8  9

Itinerário: 02012

  matriz[0][2] // 3
  matriz[2][0] // 7
  matriz[0][1] // 2
  matriz[1][2] // 6

Soma: 3 + 7 + 2 + 6 = 18
Saída: 18
```

> OBS.: Certifique-se de colocar as verificações corretas para a leitura de cada inteiro que será lido no programa.

---

**⚡ 34) Dada uma string inserida pelo usuário, converter todas as letras maiúsculas para minúsculas e imprimir as palavras que contenham a maior quantidade de vogais.**

---

**⚡ 35) Dada uma string inserida pelo usuário, converter todas as letras maiúsculas para minúsculas e imprimir as palavras que contenham a menor quantidade de vogais.**

---

**36) Dada uma matriz quadrada digitada pelo usuário, verificar se os elementos nas extremidades são espelhados em relação à diagonal principal, caso sejam, exiba qual é o valor repetido.**

```bash
Exemplo:

  matriz[3][3] =  1  '9'  3   4
                 '9'  7   6  '5'
                  2   1   8   8
                  2  '5'  1   6

  O elemento '9' é espelhado
  O elemento '5' é espelhado

```

---

**37) Dada uma matriz qualquer digitada pelo usuário, exibir as linhas pares em ordem crescente e as linhas ímpares em ordem decrescente. Se houverem valores repetidos, exibir quais valores repetem e com que frequência.**

```bash
Exemplo:

  matriz[3][3] = 1  9  3
                 4  9  6
                 9  1  8

  [0] 1 3 9 (ordem crescente)
  [1] 9 6 4 (ordem decrescente)
  [2] 1 8 9 (ordem crescente)

  O elemento '1' aparece 2 vezes
  O elemento '9' aparece 3 vezes

```

---

**⚡ 38) Dada uma matriz de inteiros:**

a) Ordenar a diagonal principal de forma decrescente;

b) Verificar se os elementos espelhados em relação à diagonal principal são iguais. Se forem, substituir ambos por '*'. Se não forem, inverter a posição de ambos.

---

## 2. Resoluções dos exercícios

|     | Código-fonte  | Assuntos  |
| :--: | ----------- | --------- |
| 1 | [frequencia_elementos_vetor.c][QUESTAO_01] |**Vetores**, algoritmos|
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
|28|[ordena-menores-palindromos-crescente-&-decrescente.c][QUESTAO_28]| ⚡ **Funções**, **Strings**, manipulação de strings|
|29|[ordena-primeiro-palindromo-crescente-&-decrescente.c][QUESTAO_29]| ⚡ **Funções**, **Strings**, manipulação de strings|
|30|[imprime-cruz-asteriscos.c][QUESTAO_30]| ⚡ **Funções**, **Ponteiros**, algoritmos|
|31|[imprime-retangulo-asteriscos.c][QUESTAO_31]| ⚡ **Funções**, **Ponteiros**, algoritmos|
|32|||
|33|[soma-itinerario-matriz.c][QUESTAO_33]| ⚡ **Funções**, **Matrizes**, algoritmos|
|34|[palavras-com-mais-vogais.c][QUESTAO_34]| ⚡ **Funções**, algoritmos|
|35|[palavras-com-menos-vogais.c][QUESTAO_35]| ⚡ **Funções**, algoritmos|
|36|[valores_espelhados_matriz.c][QUESTAO_36]| **Matrizes**, algoritmos|
|37|[ordenar_linhas_exibir_frequencia.c][QUESTAO_37]| **Matrizes**, manipulação de matrizes, algoritmos|
|38|Resolução 1: [substitui-espelhados-iguais-por-asteriscos-e-inverte-diferentes.c][QUESTAO_38] Resolução 2 por Manoella: [substitui-espelhados-iguais-por-asteriscos-e-inverte-diferentes_por_Manoella_Conceicao.c][QUESTAO_38.2] | ⚡ **Matrizes**, manipulação de matrizes, algoritmos|

## 3. Funções e blocos de código úteis

| Função | Descrição |
|-------|-------|
|[Limpar buffer de entrada](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/limparBufferEntrada.c)| Em algumas situações, quando uma leitura é realizada, o caractere de nova linha ('\n') pode permanecer no buffer de entrada. Isso pode impedir que leituras subsequentes sejam realizadas corretamente, interferindo no funcionamento adequado do algoritmo. **Utilize esta função caso encontre dificuldades para efetuar uma leitura corretamente após ter realizado uma leitura prévia.**
|[fflush()](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/fflush.c)|Serve ao mesmo propósito da função limparBufferEntrada(), entretanto, a função fflush() pode não funcionar corretamente todas as vezes, porque seu propósito principal é limpar buffers de saída.
|[Palíndromo](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/isPalindrome-usando-funcao.c)| Algoritmo para verificar se uma palavra é um palíndromo sabendo as posições da sua primeira e última letra. **Adapte este código para percorrer uma string inteira e verificar se cada palavra é um palíndromo**
|[Incluir caracteres da língua portuguesa](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/adicionar-caracteres-portugues.c)| Por padrão, não é possível visualizar caracteres específicos da língua portuguesa, como acentos, cedilhas e tils. **Adicione este segmento de código no seu programa para conseguir ler e exibir esses caracteres adicionais.**

<!-- links -->
[QUESTAO_01]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/frequencia_elementos_vetor.C
[QUESTAO_02]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/matriz-transposta-%26-ordena-diagonal-principal.c
[QUESTAO_04]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/imprime-string-quando-caractere-aparece.c
[QUESTAO_05]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/concatena-duas-strings.c
[QUESTAO_06]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/conta-vogais-consoantes-digit-caract-string.c
[QUESTAO_07]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/remove-caracteres-string-exceto-letras.c
[QUESTAO_08]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/busca-substring.c
[QUESTAO_09]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/imprime-padroes-de-asteriscos.c
[QUESTAO_11]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/inverte-linhas-matriz.c
[QUESTAO_12]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/inverte-maiusculas-minusculas-%26-censura-numeros.c
[QUESTAO_13]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/separa-maiusculas-minusculas-%26-concatena.c
[QUESTAO_15]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/ordena-maior-palavra-string.c
[QUESTAO_16]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/substitui-maior-palindromo-por-asterisco.c
[QUESTAO_17]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/encontra-caractere-em-string.c
[QUESTAO_18]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/soma-duas-matrizes.c
[QUESTAO_19]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/troca-valores-usando-ponteiros.c
[QUESTAO_20]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/ordena-vetor-ordem-crescente-&-decrescente.c
[QUESTAO_21]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/encontrar-palavra-linhas-colunas-%26-diagonais-da-matriz.c
[QUESTAO_22]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/le-%26-exibe-string-sem-usar-fgets.c
[QUESTAO_23]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/adiciona-asteriscos-em-caractere.c
[QUESTAO_25]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/cadastro-de-alunos.c
[QUESTAO_26]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/copia-string-com-ponteiros.c
[QUESTAO_27]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/concatena-duas-strings-com-ponteiros.c
[QUESTAO_28]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/ordena-menores-palindromos-crescente-%26-decrescente.c
[QUESTAO_29]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/ordena-primeiro-palindromo-crescente-%26-decrescente.c
[QUESTAO_30]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/imprime-cruz-asteriscos.c
[QUESTAO_31]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/imprime-retangulo-asteriscos.c
[QUESTAO_33]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/soma-itinerario-matriz.c
[QUESTAO_34]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/palavras-com-mais-vogais.c
[QUESTAO_35]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/palavras-com-menos-vogais.c
[QUESTAO_36]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/valores_espelhados_matriz.c
[QUESTAO_37]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/ordenar_linhas_exibir_frequencia.c
[QUESTAO_38]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/substitui-espelhados-iguais-por-asteriscos-e-inverte-diferentes.c
[QUESTAO_38.2]: https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LPEE/codes/substitui-espelhados-iguais-por-asteriscos-e-inverte-diferentes_por_Manoella_Conceicao.c