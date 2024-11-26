% Definição da função a ser usada
f = @(x) 2*x^3 - cos(x + 1) - 3;

% Parâmetros
a = -1; % Limite inferior
b = 2;  % Limite superior
Toler = 0.01; % Tolerância
IterMax = 100; % Número máximo de iterações

% Chamada da função bissecao
[Raiz, Iter, condErro] = bissecao(f, a, b, Toler, IterMax);

% Exibição dos resultados
disp(['Raiz: ', num2str(Raiz)]);
disp(['Número de Iterações: ', num2str(Iter)]);
disp(['Condição de Erro: ', num2str(condErro)]);
