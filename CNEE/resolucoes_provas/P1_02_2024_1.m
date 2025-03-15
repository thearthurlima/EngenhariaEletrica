fprintf("\n\tCálculo Numérico - Prova _._ (2024.1)\n")
fprintf("\tDiscente: Arthur Lima dos Santos\n")
fprintf("\t**************************************\n\n")

format default

% Dados de entrada
t = [0 5 10 15 20 25 30 35 40 45 50 55]';
Tt = [32.8 32.82 32.63 32.63 32.63 32.63 32.43 32.43 32.45 32.43 32.43 32.43]';
ln_Tt = log(Tt);
v = 1;
n = 12;

fprintf("\n--- 1ª questão -------------------------------")
fprintf("\n--- (Letra a) --------------------------------")
fprintf("\n--- (Parte 1) --------------------------------\n\n")

p_lin = 2;
p_qua = 3;
p_exp = 2;

[b_lin, r2_lin, sigma2_lin] = regressao_linear_multipla(n, v, p_lin, t, Tt);
[b_qua, r2_qua, sigma2_qua] = regressao_linear_multipla(n, v, p_qua, t, Tt);
[b_exp, r2_exp, sigma2_exp] = regressao_linear_multipla(n, v, p_exp, t, ln_Tt);

% Modelo exponencial da Eq(1)
fprintf("Para encontrar os parâmetros do modelo exponencial, devemos pri-\n");
fprintf("meiro transformá-lo em um sistema linear, aplicando a função lo-\n");
fprintf("garítmica em ambos os membros, assim, temos que,\n\n");
fprintf("   T(t) = a * e^(-kt) ~> \n");
fprintf("   ln(T(t)) = ln(a) - kt\n");
fprintf("   T(t) = e^(ln(a) - kt),\n");
fprintf("\nem que ln(a) é o parâmetro b(0) e k é o parâmetro b(1)\n");

% Exibição de parâmetros
exibe_parametros("Modelo linear, y = b(0) + b(1)x", p_lin, b_lin)
exibe_parametros("Modelo quadrático, y = b(0) + b(1)x + b(2)x^2", p_qua, b_qua)
exibe_parametros("Modelo exponencial (Eq. 1), T(t) = e^(ln(a) + kt)", p_exp, b_exp)

fprintf("\n--- (Parte 2) --------------------------------\n")

format long

valores_r2_sigma2 = [[r2_lin sigma2_lin]; [r2_qua sigma2_qua]; [r2_exp sigma2_exp]];

fprintf("\nPara identificar o melhor modelo para estimar a temperatura do\n");
fprintf("óleo, devemos analisar os valores dos coeficientes de determina-\n");
fprintf("ção e a variância residual de cada um dos modelos.\n\n"); 
fprintf("   r2\t\t       sigma2\n"); disp(valores_r2_sigma2)

fprintf("\nNeste caso, o modelo quadático (linha 2) fornece o maior coefi-\n");
fprintf("ciente, portanto, deve ser o melhor modelo para a estimação.\n");
fprintf("Além disso, é necessário converter o tempo para minutos.");

tempo_em_seg = 1544.4;
tempo_em_min = tempo_em_seg/60;

format default

% Modelo quadrático
Tt_modelo_qua = b_qua(1) + b_qua(2)*tempo_em_min + b_qua(3)*tempo_em_min^2;
% Modelo exmponencial (Eq. 1)
Tt_modelo_exp = exp(b_exp(1) + b_exp(2)*tempo_em_min);

fprintf("\n\nA estimativa da temperatura do motor no melhor modelo é\n");
fprintf("   T(%.2f) = %f", tempo_em_min, Tt_modelo_qua)
fprintf("\n\nA estimativa da temperatura do motor no modelo exponencial é\n");
fprintf("   T(%.2f) = %f\n", tempo_em_min, Tt_modelo_exp)

fprintf("\n--- (Letra b) --------------------------------\n")

exibe_parametros("Parâmetros encontrados pela regressão múltipla:", p_exp, b_exp)

fprintf("\n--- 2ª questão -------------------------------")

z1 = 38.7; m1 = 4; % Para T3 usando Lagrange
z2 = 26.4; m2 = 3; % Para T2 usando Gregory-Newton

% Escolha de pontos
x1 = [t(7:10)];
y1 = [Tt(7:10)];
x2 = [t(5:7)];
y2 = [t(5:7)];


r1 = polinomio_lagrange(m1, x1, y1, z1)
r2 = polinomio_gregory_newton(m2, x2, y2, z2)

fprintf("\n\n1. Pontos escolhidos para T3(37,8 min) usando Lagrange\n");
fprintf("\n      x         y\n"); disp([x1 y1])
fprintf("Valor interpolado encontrado\n   r = %f", r1)

fprintf("\n\n2. Pontos escolhidos para T2(26,4 min) usando Lagrange\n");
fprintf("\n    x      y\n"); disp([x2 y2])
fprintf("Valor interpolado encontrado\n   r = %f", r2)

disp("----------------------------------------------")
