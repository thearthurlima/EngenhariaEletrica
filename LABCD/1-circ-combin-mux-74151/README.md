## 1. Elabore um projeto de sistema digital que possua 3 entradas e uma saída que será 1 sempre que a maioria das entradas for 1. Implemente-o usando o multiplexador 74151.

<div align="center">
  
  ![circ-comb-mux-74151](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/35af8121-5148-4b62-9650-818d9a10fc1f)
</div>

### 1. Introdução

Um **mux** (multiplexador), é um dispositivo eletrônico que tem a função de combinar múltiplos sinais de entrada em um único canal de saída. É possível implementar funções lógicas usando multiplexadores, para isso, as entradas de seleção do mux serão utilizdas como variáveis lógicas e os dados de entrada serão ligadas permanentemente em baixo ou alto, a depender do que se pede na tabela-verdade, sem simplificá-la. Pela sua capacidade de implementação lógica, os multiplexadores são conhecidos como circuitos lógicos universais.

Um mux com 8 entradas terá 3 chaves de seleção ($\log_2(8) = 3$), sendo chamado de multiplexador 1-de-8 (ou *8-of-1 multiplexor*), que significa 1 saída de 8 entradas. Este mux satisfará a implementação de um sistema lógica de 3 variáveis e 8 combinações possíveis ($2^3 = 8$).

### 2. Montagem

Para implementar o circuito combinacional apresentado, é necessário que se conheça o diagrama de conexão (pin-out) e o funcionamento do circuito integrado a ser utilizado na montagem. Acesse o datasheet completo clicando no link: [DM74ALS151 Datasheet](https://www.alldatasheet.com/datasheet-pdf/pdf/50940/FAIRCHILD/74151.html).

<div align="center">
  
  <img src="https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/143e8a4a-b92c-4776-bbe0-21b1979459c4">
  
  *Disponível em alldatasheet.com*
</div>


O datasheet e a *function table* do DM74ALS151 nos informam que para o ***Strobe*** ligado em alto, todas as entradas resultarão em uma saída **nível baixo**, portanto o strobe deve estar ativo em baixo.

> "A Strobe input is provided which, when at the high level, disables all data inputs and forces the Y output to the LOW state and the W output to the HIGH state." General Description, DM74ALS151 datasheet, p. 1 

Os pins SELECT A, SELECT B, SELECT C são as 3 chaves de seleção que serão utilizadas como as variáveis lógicas. Já os pins D0 a D7 (que serão as 8 combinações possíveis) serão ligadas permanentemente em alto ou baixo dependendo da tabela-verdade.

<div align="center">
<p><strong>Tabela verdade e Pin-out</strong></p>

| **A** | **B** | **C** | **Y** | **PIN** | *Ligada em* |
|:-----:|:-----:|:-----:|:-----:|:------:|:-----------:|
|   0   |   0   |   0   | **0** |   D0   |    Baixo    |
|   0   |   0   |   1   | **0** |   D1   |    Baixo    |
|   0   |   1   |   0   | **0** |   D2   |    Baixo    |
|   0   |   1   |   1   | **1** |   D3   |    Alto     |
|   1   |   0   |   0   | **0** |   D4   |    Baixo    |
|   1   |   0   |   1   | **1** |   D5   |    Alto     |
|   1   |   1   |   0   | **1** |   D6   |    Alto     |
|   1   |   1   |   1   | **1** |   D7   |    Alto     |
</div>

Na tabela acima, para $\bar{A}\bar{B}\bar{C}$ *(A = 0 e B = 0 e C = 0)* a saída é 0, portanto, vamos ligar a D0 em baixo; para $\bar{A}{B}{C}$ *(A = 0 e B = 1 e C = 1)* a saída é 1, então a conexão de D3 deve ser em alto e assim por diante, conforme a tabela.

Montagem final no simulador:

<div align="center">
  
  ![circ-comb-mux-74151-legendas](https://github.com/thearthurlima/EngenhariaEletrica/assets/115672061/93dcea3b-1e61-4bb3-921f-1c5a21fe4024) 
</div>

**Para acessar o arquivo .txt para o simulador, [clique aqui](https://github.com/thearthurlima/EngenhariaEletrica/blob/main/LABCD/1-circ-combin-mux-74151/1-circ-combin-mux-74151.txt).**
