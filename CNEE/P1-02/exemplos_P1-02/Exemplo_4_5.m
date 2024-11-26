disp("% Os parâmetros de entrada")

n = 11
v = 1
p = 4
x = [0.01;
     0.10;
     0.20;
     0.30;
     0.40;
     0.50;
     0.60;
     0.70;
     0.80;
     0.90;
     1.00]
y = [0.1000;
     0.3162;
     0.4472;
     0.5477;
     0.6325;
     0.7071;
     0.7746;
     0.8367;
     0.8944;
     0.9487;
     1.0000]

[b, r2, sigma2] = regressao_linear_multipla(n, v, p, x, y);

disp("% produzem os resultados")
fprintf("\nCoeficientes de regressão (b0, b1 e b2) =\n"); disp(b')
fprintf("\nCoeficientes de determinação =\n"); disp(r2)
fprintf("\nVariância residual =\n"); disp(sigma2)

modelo = sprintf('u = %f + %fx1 + (%fx2) + %fx3', b(1), b(2), b(3), b(4));
fprintf("\nPortanto, a equação dos quadrados mínimos é\n");disp(modelo)


