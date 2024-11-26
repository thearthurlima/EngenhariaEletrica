    % Aplicação de integral dupla
    % UNIVASF - Universidade Federal do Vale do São Francisco
    % Disponibilizado por Professor Dr. Lino Marcos da Silva
    % Integrais Múltiplas 15 - Exemplo 6

clc; close all;

% Declaração das funções
h = @(x,y) x + 2*y;

% Parâmetros de entrada para a primeira integração
ay = 0; by = 10; nx = 3;
ax = 0; bx = 10; ny = 3;

% Cálculo da integral para encontrar a constante
[Integral1, CondErro1] = gauss_legendre_dupla(h, ax, bx, nx, ay, by, ny);
% Cálculo do valor da constante
C = 1/Integral1;

% Exibição dos resultados parciais
fprintf('\nIntegral = %.0f\n', Integral1);
fprintf('CondErro = %d\n', CondErro1);
fprintf('Constante = %d\n', C);

% Parâmetros de entrada para a segunda integração
ay = 2; by = 10; nx = 3;
ax = 0; bx = 7; ny = 3;

% Cálculo da integral para encontrar a probabilidade
[Integral2, CondErro2] = gauss_legendre_dupla(h, ax, bx, nx, ay, by, ny);
% Cálculo da probabilidade
R = C*Integral2;

% Exibição dos resultados finais
fprintf('\nIntegral = %.0f\n', Integral2);
fprintf('CondErro = %d\n\n', CondErro2);
fprintf('\nResultado = %.4f\n', R);