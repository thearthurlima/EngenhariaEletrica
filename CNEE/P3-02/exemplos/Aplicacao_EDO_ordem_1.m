    % Aplicação de EDO de 1º ordem
    % Differential Equations and Their Applications, 4ª Ed.
    % Cap 1.4: Population Models, Estudo da pág. 32

clc; close all;

% Declaração de funções

% dp/dt = a*p - b*p^2
% f_analitica = Solução do PVI

Dy = @(x, y) 0.03134*y - 1.5887*10^-10*y^2;
f_analitica = @(t) 197273E3./(1 + exp(-0.03134*(t-1913.25)));

% Parâmetros de entrada
a = 1790;     % Limite inferior
b = 1950;     % Limite superior
m = 16;       % Número de subintervalos
y0 = 3929E3;  % Valor inicial

% Calculando estimativa pelo método escolhido
% [VetX, VetY] = metodo_euler(Dy, a, b, m, y0);
% [VetX, VetY] = metodo_euler_modificado(Dy, a, b, m, y0);
% [VetX, VetY] = metodo_euler_melhorado(Dy, a, b, m, y0);
[VetX, VetY] = runge_kutta_4(Dy, a, b, m, y0);
% [VetX, VetY] = dormand_prince(Dy, a, b, m, y0);
% [VetX, VetY] = adams_bashforth_moulton(Dy, a, b, m, y0);

% Calculando resultados através da solução exata da EDO
VetY_analitico = f_analitica(VetX);
x = a:0.01:b; y = f_analitica(x);
Erro = abs(VetY_analitico - VetY);

% Exibição dos valores obtidos
R = array2table([VetX', VetY', VetY_analitico', Erro'], ...
    'VariableNames',{'Ano', 'População estimada', 'População exata (analítica)', 'Erro'});
disp(R);


% Declaração dos valores reais para comparação
P_actual = [3920E3;
            5308E3;
            7240E3;
            9638E3;
            12866E3;
            17069E3;
            23192E3;
            31443E3;
            38558E3;
            50156E3;
            62948E3;
            75995E3;
            91972E3;
            105711E3;
            122775E3;
            131669E3;
            150697E3];

% Primeiro gráfico
figure;
plot(x, y, 'blue', 'DisplayName', 'Resultados exatos (analítico)');
hold on;
scatter(VetX, VetY, 'magenta', 'DisplayName', 'Resultados estimados');
% title('Comparação das estimativas por RK4 e resultados analíticos');
xlabel('Ano');
ylabel('População');
legend('show', 'Location', 'northwest');
grid on;
hold off;

% Segundo gráfico
figure;
scatter(VetX, VetY, 'magenta', 'DisplayName', 'Resultados estimados');
hold on;
plot(VetX, P_actual, '+', 'MarkerSize', 10, 'Color', 'b', 'DisplayName', 'Valores reais');
% title('Comparação das estimativas por RK4 e valores reais');
xlabel('Ano');
ylabel('População');
legend('show', 'Location', 'northwest');
grid on;
hold off;

