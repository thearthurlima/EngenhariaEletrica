%clc; close all;

fprintf("\n\tCálculo Numérico - Prova 2.2 (2024.1)\n")
fprintf("\tDiscente: Arthur Lima dos Santos\n")
fprintf("\t**************************************\n\n")

format default

% Definição das variáveis simbólicas
syms x1 x2 x3 x4;

% Definindo as funções individuais
f1 = x1^2 + x2*exp(x3) - x4 - 8;
f2 = log(x2) + x3^2 + x4 - 3;
f3 = sin(x1)*x3 + x4 + x2^2 - 10;
f4 = x1 + x2*x3 + cos(x4) - 4;

% Função vetorial
F = [f1; f2; f3; f4];

% Definindo a função escalar de custo
g = f1^2 + f2^2 + f3^2 + f4^2;

% Lista das variáveis simbólicas
simbolos = [x1, x2, x3, x4];

% Inicialização dos parâmetros
x0 = [1; 1; 1; 1];       % Ponto inicial arbitrário para gradiente
Toler1 = 0.5;            % Tolerância para questão 1
Toler2 = 10^-6;          % Tolerância para questão 2
IterMax = 100;           % Número máximo de iterações

% Encontrando aproximação inicial
[x_aproximado] = gradiente_descendente_ordem_4(g, simbolos, x0, Toler1, IterMax);

% Solução do sistema com base no ponto aprocimado inicial
[x_final, Iter] = newton_rhapson_ordem_4(F, simbolos, x_aproximado, Toler2, IterMax);

fprintf("\n--- 1ª questão -------------------------------\n\n")

fprintf("\nPelo gradiente descendente e partindo de um ponto inicial arbi-\n")
fprintf("tário, uma solução aproximada é:\n\n")

% Exibição do ponto aproximado
R1 = array2table(x_aproximado, 'RowNames', {'x', 'y', 'z', 'w'});
disp(R1);

fprintf("\n--- 2ª questão -------------------------------\n\n")

fprintf("\nPartindo do ponto x_aproximado, a solução encontrada pelo método\n")
fprintf("Newton-Rhapson é:\n\n")

% Exibição solução final
R2 = array2table(x_final, 'RowNames', {'x', 'y', 'z', 'w'});
disp(R2);