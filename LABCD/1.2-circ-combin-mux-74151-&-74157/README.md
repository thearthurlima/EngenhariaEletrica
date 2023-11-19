### 1.2 Elabore um projeto de sistema digital que possua 4 entradas e uma saída que será 1 sempre que a maioria das entradas for 1. Implemente-o usando o multiplexador 74151.

<div align="center">
  
  ![Simulação circuito lógico com 4 variáveis usando mux 74151](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/1192f100-c4f9-4b67-b1ea-c6fd4c143bc7)
</div>

### 1. Introdução

Um **mux** (multiplexador), é um dispositivo eletrônico que tem a função de combinar múltiplos sinais de entrada em um único canal de saída. É possível implementar funções lógicas usando multiplexadores, para isso, as entradas de seleção do mux serão utilizdas como variáveis lógicas e os dados de entrada serão ligadas permanentemente em baixo ou alto, a depender do que se pede na tabela-verdade, sem simplificá-la. Pela sua capacidade de implementação lógica, os multiplexadores são conhecidos como circuitos lógicos universais.

Um mux com 8 entradas terá 3 chaves de seleção ($\log_2(8) = 3$), sendo chamado de multiplexador 1-de-8 (ou *8-of-1 multiplexor*), que significa 1 saída de 8 entradas. Para a implementação do circuito pedido, será necessário realizara a associação de dois multiplexadores 1-de-8 e um multiplexador 2-to-1.

### 2. Montagem

Para implementar o circuito combinacional apresentado, é necessário que se conheça o diagrama de conexão (pin-out) e o funcionamento dos circuito integrados que serão utilizados na montagem.

Datasheet completo: [DM74ALS151 Datasheet (8-to-1 multiplexer)](https://www.alldatasheet.com/datasheet-pdf/pdf/50940/FAIRCHILD/74151.html).

Datasheet completo: [74LS157 Datasheet (2-to-1 multiplexer)](https://www.alldatasheet.com/datasheet-pdf/pdf/27402/TI/74LS157.html).

<div align="center">
  
### 74LS151 - Diagrama de conexão e tabela de funções

![connection-diagram_function-table-mux-74151](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/143e8a4a-b92c-4776-bbe0-21b1979459c4)
  
  *Disponível em alldatasheet.com*
</div>

<div align="center">
  
### 74LS158 - Diagrama de conexão e tabela de funções

  ![connection-diagram-2-to-1-mux-74LS157](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/4559f4bd-16e4-4dac-9239-e863793cde6d)
  
  *Disponível em alldatasheet.com*
</div>


Segundo o datasheet e a *function table*, o ***Strobe*** dos dois multimplexadores está ativo em **nível baixo** e todas as entradas são desabilitadas quando o Strobe estiver em alto. Portando, o Strobe de ambos devem estar permanente ligados no nível baixo.

> "A Strobe input is provided which, when at the high level, disables all data inputs and forces the Y output to the LOW state and the W output to the HIGH state." General Description, DM74ALS151 datasheet, p. 1 

<div align="center">
<p><strong>Tabela-verdade do sistema e pinagem</strong></p>

| **D** | **C** | **B** | **A** | **Y** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   |   0   |   0   |   D0   |    Baixo    |
|   1   |   0   |   0   |   0   |   0   |   D1   |    Baixo    |
|   0   |   1   |   0   |   0   |   0   |   D2   |    Baixo    |
|   1   |   1   |   0   |   0   |   0   |   D3   |    Baixo    |
|   0   |   0   |   1   |   0   |   0   |   D4   |    Baixo    |
|   1   |   0   |   1   |   0   |   0   |   D5   |    Baixo    |
|   0   |   1   |   1   |   0   |   0   |   D6   |    Baixo    |
|   1   |   1   |   1   |   0   |   1   |   D7   |    Alto     |
|   0   |   0   |   0   |   1   |   0   |   D8   |    Baixo    |
|   1   |   0   |   0   |   1   |   0   |   D9   |    Baixo    |
|   0   |   1   |   0   |   1   |   0   |   D10  |    Baixo    |
|   1   |   1   |   0   |   1   |   1   |   D11  |    Alto     |
|   0   |   0   |   1   |   1   |   0   |   D12  |    Baixo    |
|   1   |   0   |   1   |   1   |   1   |   D13  |    Alto     |
|   0   |   1   |   1   |   1   |   1   |   D14  |    Alto     |
|   1   |   1   |   1   |   1   |   1   |   D15  |    Alto     |
</div>

A tabela representa as entradas e possibilidades do sistema inteiro, entretanto, para compreender melhor o funcionamento da associação, é mais prático visualizar as tabelas-verdade de cada multiplexador individualmente.

<div align="center">
<p><strong>MUX 2 - Tabela-verdade e pinagem</strong></p>

| **D** | **C** | **B** | **Y0** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   | **0** |   D0   |    Baixo    |
|   1   |   0   |   0   | **0** |   D1   |    Baixo    |
|   0   |   1   |   0   | **0** |   D2   |    Baixo    |
|   1   |   1   |   0   | **0** |   D3   |    Baixo    |
|   0   |   0   |   1   | **0** |   D4   |    Baixo    |
|   1   |   0   |   1   | **0** |   D5   |    Baixo    |
|   0   |   1   |   1   | **0** |   D6   |    Baixo    |
|   1   |   1   |   1   | **1** |   D7   |    Alto     |
</div>

Na tabela acima, para ${A}\bar{B}{C}$ *(A = 1 e B = 0 e C = 1)* a saída é 0, portanto, vamos ligar a D5 em baixo; para ${A}{B}{C}$ *(A = 1 e B = 1 e C = 1)* a saída é 1, então a conexão de D7 deve ser em alto e assim por diante, conforme a tabela.

<div align="center">
<p><strong>MUX 2 - Tabela-verdade e pinagem</strong></p>

| **D** | **C** | **B** | **Y1** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   | **0** |   D8   |    Baixo    |
|   1   |   0   |   0   | **0** |   D9   |    Baixo    |
|   0   |   1   |   0   | **0** |   D10  |    Baixo    |
|   1   |   1   |   0   | **1** |   D11  |    Alto     |
|   0   |   0   |   1   | **0** |   D12  |    Baixo    |
|   1   |   0   |   1   | **1** |   D13  |    Alto     |
|   0   |   1   |   1   | **1** |   D14  |    Alto     |
|   1   |   1   |   1   | **1** |   D15  |    Alto     |
</div>

As saídas Y dos multiplexadores, por sua vez, serão conectadas aos inputs do Mux 3, que terá a seguinte tabela-verdade:

<div align="center">
<p><strong>MUX 3 - Tabela verdade</strong></p>

| **A** | **Y** |
|:-----:|:-----:|
|   0   |   Y0  |
|   1   |   Y1  |
</div>

Em que Y é a saída final do circuito lógico. Neste sistema o Mux 1 e o Mux 2 compartilharão as variáveis B, C e D (bits mais significativos) nas caixas de seleção SELECT A, SELECT B, SELECT C, respectivamente, enquanto a variável A estará na caixa de seleção do Mux 3 (bit menos significativo). Veja abaixo o esquema de associação dos 3 multiplexadores.

<div align="center">
  
  ![Diagrama circuito lógico com 4 variáveis usando mux 74151-74157](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/023d81eb-0851-44d9-a168-7c4f8c32480a)
</div>

A montagem final no simulador de circuitos:

<div align="center">
  
  ![circ-comb-mux-74151_74158_legendado](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/a1c9b17c-a3ec-478f-b631-9838a91ec409)
</div>

<div align="center">

**Para acessar o arquivo .txt para o simulador, [clique aqui](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LABCD/1.2-circ-combin-mux-74151-%26-74157/1.2-circ-combin-mux-74151-%26-74157.txt).**
</div>


___
## Referências:
- https://endigital.orgfree.com/combinacional/EDMUX.htm
- https://www.youtube.com/watch?v=BriODlzLEG0&t=308s
- TOCCI, Ronald J.; WIDMER, Neal S.; MOSS, Gregory L.. Sistemas Digitais: Princípios e Aplicações. 10ª ed. São Paulo: Pearson, 2007.
