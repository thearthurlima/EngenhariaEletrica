### 1.3. Circuito combinacional com 4 entradas e uma saída que será 1 sempre que a maioria das entradas for 1 usando um multiplexador 8-to-1 e portas xor.

<div align="center">
  
  ![1 3-circ-combn-mux-74151- -portas-xor](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/9d07c13c-24b9-4a26-b063-00c32b9b4c02)
</div>

## Sumário
<!-- TOC -->
- [1. Introdução](#1-introdução)
- [2. Montagem](#2-montagem)
  - [Montagem final no simulador](#montagem-final-no-simulador)
  - [Arquivo .txt](#para-acessar-o-arquivo-txt-para-o-simulador-clique-aqui)

<!-- /TOC -->
___

### 1. Introdução

Um **mux** (multiplexador), é um dispositivo eletrônico que tem a função de combinar múltiplos sinais de entrada em um único canal de saída. É possível implementar funções lógicas usando multiplexadores, para isso, as entradas de seleção do mux serão utilizdas como variáveis lógicas e os dados de entrada serão ligadas permanentemente em baixo ou alto, a depender do que se pede na tabela-verdade, sem simplificá-la. Pela sua capacidade de implementação lógica, os multiplexadores são conhecidos como circuitos lógicos universais.

Um mux com 8 entradas terá 3 chaves de seleção ($\log_2(8) = 3$), sendo chamado de multiplexador 1-de-8 (ou *8-of-1 multiplexor*), que significa 1 saída de 8 entradas. Para a implementação de um circuito com 16 possíveis saídas, é possível implementar apenas uma multiplexador 8-to-1, mas será preciso fazer com que algumas das entradas de dados possam mudar de estado quando for necessário.

### 2. Montagem

Para implementar o circuito combinacional apresentado, é necessário que se conheça o diagrama de conexão (pin-out) e o funcionamento dos circuito integrados que serão utilizados na montagem.

### Datasheets completos:

<div align="center">

| Nome | Descição | Datasheet |
|--|--|--|
| 74LS151 | Multiplexador 8-para-1 |https://www.alldatasheet.com/datasheet-pdf/pdf/50940/FAIRCHILD/74151.html
| 74LS157 | QUAD 2-INPUT EXCLUSIVE-OR GATE | https://www.datasheetcatalog.com/datasheets_pdf/S/N/5/4/SN54LS386.shtml
</div>

<div align="center">
  
### 74LS151 - Diagrama de conexão e tabela de funções

![connection-diagram_function-table-mux-74151](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/f144d2de-90e1-4df8-86d1-8fedc536c561)
  
  *Disponível em alldatasheet.com*
</div>

<div align="center">
  
### 74LS386 - Pin-out

  ![exclusive-or-gate-pinout-74LS386](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/b7379602-e114-4498-b42c-402a4055c576)
  
  *Disponível em datasheetcatalog.com*
</div>

Segundo o datasheet e a *function table*, o ***Strobe*** do multimplexador está ativo em **nível baixo** e todas as entradas são desabilitadas quando o Strobe estiver em alto. Portando, o Strobe deve estar permanente ligado no nível baixo.

> "A Strobe input is provided which, when at the high level, disables all data inputs and forces the Y output to the LOW state and the W output to the HIGH state." General Description, DM74ALS151 datasheet, p. 1 

<div align="center">
<p><strong>Tabela-verdade do sistema e pinagem</strong></p>

| **A** | **B** | **C** | **D** |   **Y**   | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:---------:|:------:|:-----------:|
|   0   |   0   |   0   |   0   |   **0**   |   D0   |    Baixo    |
|   0   |   0   |   0   |   1   |   **0**   |   D1   |    Baixo    |
|   0   |   0   |   1   |   0   |   **0**   |   D2   |    Baixo    |
|   0   |   0   |   1   |   1   |   **0**   |   D3   |    Baixo    |
|   0   |   1   |   0   |   0   |   **0**   |   D4   |    Baixo    |
|   0   |   1   |   0   |   1   |   **0**   |   D5   |    Baixo    |
|   0   |   1   |   1   |   0   |   **0**   |   D6   |    Baixo    |
|   0   |   1   |   1   |   1   |   **1**   |   D7   |    Alto     |
|   1   |   0   |   0   |   0   |   **0**   |   D8   |    Baixo    |
|   1   |   0   |   0   |   1   |   **0**   |   D9   |    Baixo    |
|   1   |   0   |   1   |   0   |   **0**   |   D10  |    Baixo    |
|   1   |   0   |   1   |   1   |   **1**   |   D11  |    Alto     |
|   1   |   1   |   0   |   0   |   **0**   |   D12  |    Baixo    |
|   1   |   1   |   0   |   1   |   **1**   |   D13  |    Alto     |
|   1   |   1   |   1   |   0   |   **1**   |   D14  |    Alto     |
|   1   |   1   |   1   |   1   |   **1**   |   D15  |    Alto     |
</div>

A tabela representa as entradas e possibilidades do sistema inteiro, entretanto, para compreender melhor o funcionamento da associação, é mais prático visualizar as tabelas-verdade de cada multiplexador individualmente. Vamos ignorar o bit mais significante, que é a variável A, assim como foi feito no [projeto 1.2](https://github.com/thearthurlima/EngenhariaEletrica/tree/main/LABCD/1.2-circ-combin-mux-74151-%26-74157).

<div align="center">
<p><strong>Tabela-verdade parte 1 e pinagem</strong></p>

| **B** | **C** | **D** | **Y0** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   | **0** |   D0   |    Baixo    |
|   0   |   0   |   1   | **0** |   D1   |    Baixo    |
|   0   |   1   |   0   | **0** |   D2   |    Baixo    |
|   0   |   1   |   1   | **0** |   D3   |    Baixo    |
|   1   |   0   |   0   | **0** |   D4   |    Baixo    |
|   1   |   0   |   1   | **0** |   D5   |    Baixo    |
|   1   |   1   |   0   | **0** |   D6   |    Baixo    |
|   1   |   1   |   1   | **1** |   D7   |    Alto     |
</div>


<div align="center">
<p><strong>Tabela-verdade parte 2 e pinagem</strong></p>

| **B** | **C** | **D** | **Y1** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   | **0** |   D8   |    Baixo    |
|   0   |   0   |   1   | **0** |   D9   |    Baixo    |
|   0   |   1   |   0   | **0** |   D10  |    Baixo    |
|   0   |   1   |   1   | **1** |   D11  |    Alto     |
|   1   |   0   |   0   | **0** |   D12  |    Baixo    |
|   1   |   0   |   1   | **1** |   D13  |    Alto     |
|   1   |   1   |   0   | **1** |   D14  |    Alto     |
|   1   |   1   |   1   | **1** |   D15  |    Alto     |
</div>

Ao comparar as duas tablas, vemos que o estado de D0 = D8, D1 = D9, D2 = D10, D4 = 12, D7 = D15, portanto, essas saídas podem ser permanentemente ligadas nesse estado no multiplexador. Já para as outras saídas, ligamos o estado da primeira parte tabela-verdade na primeira entrada da porta xor, a segunda entrada na xor na variável A e a saída na porta correspondente no multiplexador, assim, quando A estiver em 1 a saída será invertida. Veja um exemplo na tabela abaixo:

<div align="center">

|D3|A|Saída da xor conectada ao multiplexador|
|:--:|:--:|:--:|
|0|0|0|
|0|1|1|
</div>

Assim, quando a variável A estiver ativa, uma nova tabela-verdade entrará em vigor no sistema, que será a parte 2 da tabela.

<div align="center">
  
  #### Montagem final no simulador:

  ![circ-comb-mux-74151_74386_legendado](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/8a93b94d-e5c1-4a57-a9a1-0f02ab08f101)
</div>

<div align="center">

#### Para acessar o arquivo .txt para o simulador, [clique aqui](------).
</div>
