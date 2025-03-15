clc

% Definição das variáveis simbólicas
syms x1 x2 x3;

% Definindo as funções individuais
f1 = x1^2 + x2^2 + x3^2 - 1;
f2 = sin(x1) - x3 + cos(x2);
f3 = exp(x1) - x2 - x3^3;

% Função vetorial
F = [f1; f2; f3];

g = f1^2 + f2^2 + f3^2;

% Lista das variáveis simbólicas
simbolos = [x1, x2, x3];

% Inicialização dos parâmetros
x0 = [1; 1; 1];       % Ponto inicial
Toler1 = 0.5;         % Tolerância 1
Toler2 = 1e-6;        % Tolerância 2
IterMax = 100;        % Número máximo de iterações

% Encontrando aproximação inicial
[x_aproximado, Iter] = gradiente_descendente_ordem_3(g, simbolos, x0, Toler1, IterMax);

% Solução do sistema com base no ponto aprocimado inicial
[x, Iter] = newton_rhapson_ordem_3(F, simbolos, [1;1;1], Toler2, IterMax);

disp(x_aproximado);   % Exibição do ponto aproximado
disp(x);              % Exibindo solução final