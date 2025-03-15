% Definição da função a ser usada
f = @(x) 0.05*x^3 - 0.4*x^2 + 3*sin(x)*x;

% Parâmetros
a = 10; % Limite inferior
b = 12;  % Limite superior
Toler = 0.005; % Tolerância
IterMax = 100; % Número máximo de iterações

% Chamada da função bissecao
[Raiz, Iter, condErro] = bissecao(f, a, b, Toler, IterMax);

% Exibição dos resultados
disp(['Raiz: ', num2str(Raiz)]);
disp(['Número de Iterações: ', num2str(Iter)]);
disp(['Condição de Erro: ', num2str(condErro)]);
