    % Aplicação de integral simples
    % Cálculo Numérico (Com aplicações) - 2ª Ed.
    % Exemplo de aplicação 6.6

clc; close all;

% Declaração de funções
Dy1 = @(x, y, z) z;
Dy2 = @(x, y, z) -500*z - 5000*y + 5000;

% Solução PVI
% f_analitica = @(t) -137864072494297872/134990656633267747*exp(50*(sqrt(23) - 5)*t) + 2873415861030125/134990656633267747*exp(-50*(5 + sqrt(23))*t) + 1;
f_analitica = @(t) -(5+sqrt(23))/(2*sqrt(23))*exp(50*(sqrt(23) - 5)*t)...
    + (-1+(5+sqrt(23))/(2*sqrt(23)))*exp(-50*(5 + sqrt(23))*t) + 1;

% Parâmetros de entrada
a = 0;
b = 0.008;
m = 8;
y10 = 0;
y20 = 0;

% Cálculo das soluções
[VetX, VetY1, VetY2] = runge_kutta_4_sistema_2(Dy1, Dy2, a, b, m, y10, y20);
Vet_exato = f_analitica(VetX);
Vet_erro = abs(Vet_exato - VetY1);

% Exibição dos resultados
R = array2table([VetX', VetY1', Vet_exato', Vet_erro', VetY2'], 'VariableNames', {'Tempo', 'Carga estimada', 'Carga exata (analítica)', '| q_exata - q_estimada |', 'Corrente'});
disp(R);

% Carga
subplot(2, 1, 1);
scatter(VetX, VetY1, 20, "magenta", 'DisplayName', 'Carga estimada');
hold on;
x = a:0.001:b;
y = f_analitica(x);
plot(x, y, 'Color', 'blue', 'DisplayName', 'Solução exata (analítica)');
legend('show', 'Location', 'northwest');
xlabel('Tempo');       % Título do eixo X
ylabel('Carga');       % Título do eixo Y
grid on;

% Corrente
subplot(2, 1, 2);
scatter(VetX, VetY2, 20, "magenta", 'DisplayName', 'Corrente estimada');
legend('show', 'Location', 'northwest');
xlabel('Tempo');       % Título do eixo X
ylabel('Corrente');    % Título do eixo Y
grid on;

 
    