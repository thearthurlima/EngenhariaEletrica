% Passo 1: Crie a matriz
A = [1 2 3; 4 5 6; 7 8 9];

% Passo 2: Converta a matriz em uma tabela
T = array2table(A);

% Passo 3: Defina os nomes das colunas e linhas
T.Properties.VariableNames = {'Raiz', 'Iter', 'condErro'};
T.Properties.RowNames = {'Bisseção', 'Secante', 'Regula falsi'};

% Passo 4: Exiba a tabela
disp(T);
