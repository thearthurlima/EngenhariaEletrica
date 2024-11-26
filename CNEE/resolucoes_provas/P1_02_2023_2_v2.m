% Dados de entrada
t = [9.0; 10.5; 12.8; 14.0; 16.3; 18.5; 21.0; 23.0; 25.0; 27.0];
Rt = [1.00; 0.88; 0.72; 0.53; 0.47; 0.35; 0.26; 0.21; 0.16; 0.07];
ln_Rt = log(Rt);
n = 10;
v = 1;

% Regressão linear para modelo linear
p_lin = 2;
[b_lin, r2_lin, sigma2_lin] = regressao_linear_multipla(n, v, p_lin, t, Rt);
% Regressão linear para modelo quadrático
p_qua = 3;
[b_qua, r2_qua, sigma2_qua] = regressao_linear_multipla(n, v, p_qua, t, Rt);
% Regressão linear para modelo exponencial
% Transformação em sistema linear: Rt = a * e^(-kt) ~> ln(Rt) = ln(a) - kt
p_exp = 2;
[b_exp, r2_exp, sigma2_exp] = regressao_linear_multipla(n, v, p_exp, t, ln_Rt);

%Exibição de parâmetros
exibe_parametros("Modelo linear, y = b(0) + b(1)x", p_lin, b_lin)
exibe_parametros("Modelo quadrático, y = b(0) + b(1)x + b(2)x^2", p_qua, b_qua)
exibe_parametros("Modelo exponencial (Eq. 1), ln(R(t)) = b(0) + b(1)t", p_exp, b_exp)

% Avaliação dos valores de r2 e sigma2 de cada um dos modelos
valores = [[r2_lin sigma2_lin]; [r2_qua sigma2_qua]; [r2_exp sigma2_exp]];
fprintf("\n    r2\t      sigma2\n"); disp(valores)
fprintf("Dentre os 3 modelos, o modelo quadrático apresenta\n");
fprintf("coeficiente de determinação mais próximo de 1 e também\n");
fprintf("a menor variância resitual, portanto, é o modelo que\n");
fprintf("representa o sistema e é o melhor modelo.\n\n");

tempo = 13.7; conf = 0.8;
Rt_qua = b_qua(1) + b_qua(2)*tempo + b_qua(3)*tempo^2;
Rt_exp = exp(b_exp(1) + b_exp(2)*tempo);
t_para_conf = (log(conf) - b_exp(1))/b_exp(2);



fprintf("O modelo quadrático é da forma R(t) = b(0) + b(1)t + b(2)t^2,\n");
fprintf("em que t = 13,7 meses, portanto, a confiabilidade para o melhor")
fprintf("\nmodelo é\n\nR(t) ="); disp(Rt_qua);

fprintf("Para realizar a regressão no modelo exponencial, é\n");
fprintf("necessário primeiro transformá-lo em um modelo linear\n");
fprintf("pela substituição de variáveis, neste caso, temos que\n");
fprintf("R(t) = a * e^(-kt) ~> ln(R(t)) = ln(a) - kt, em que\n");
fprintf("'ln(a)' e 'k' são os parâmetros b(0) e b(1).\n\n");

fprintf("   R(t) = a * e^(-kt) ~> ln(R(t)) = ln(a) - kt\n");
fprintf("   R(t) = e^(ln(a) - kt)\n\n");

disp(Rt_exp);
disp(t_para_conf);

z_R3 = 13.7;
t_R3 = [t(2:5)]; % Escolha dos pontos mais próximos de z
Rt_R3 = [Rt(2:5)]; % Escolha dos pontos mais próximos de z
r_lagrange = polinomio_lagrange(4, t_R3, Rt_R3, z_R3);

z_R2 = 24.7;
t_R2 = [t(8:10)]; % Escolha dos pontos mais próximos de z
Rt_R2 = [Rt(8:10)]; % Escolha dos pontos mais próximos de z
r_gregory_newton = polinomio_gregory_newton(3, t_R2, Rt_R2, z_R2);

fprintf("Os 4 pontos mais próximos do ponto a ser interpolado\n");
fprintf("   z = %.1f,\n\n", z_R3); disp([t_R3'; Rt_R3'])
fprintf("Valor interpolado encontrado\n");
fprintf("   r = %f\n\n", r_lagrange);

fprintf("Os 3 pontos mais próximos do ponto a ser interpolado\n");
fprintf("   z = %.1f,\n\n", z_R2); disp([t_R2'; Rt_R2'])
fprintf("Valor interpolado encontrado\n");
fprintf("   r = %f\n\n", r_gregory_newton);