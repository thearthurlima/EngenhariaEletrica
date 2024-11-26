% Definindo os valores de x
x = -1:0.1:1; % Valores de x variando de -10 a 10 com passo de 0.1

% Calculando os valores de y
y = 2 * power(x,3) - cos(x + 1); % y é x ao quadrado

% Criando o gráfico
plot(x, y);

% Adicionando título e rótulos aos eixos
title('f(x)=2*x^3-cos(x+1)-3');
xlabel('x');
ylabel('f(x)');

% Adicionando uma grade
grid on;
