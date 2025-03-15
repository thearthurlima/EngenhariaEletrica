disp("% Os parâmetros de entrada")

n = 16
v = 2
p = 3
x = [60.3, 108;
     61.1, 109;
     60.2, 110;
     61.2, 112;
     63.2, 112;
     63.6, 113;
     65.0, 115;
     63.8, 116;
     66.0, 117;
     67.9, 119;
     68.2, 120;
     66.5, 122;
     68.7, 123;
     69.6, 125;
     69.3, 128;
     70.6, 130]
y = [234;
     259;
     258;
     285;
     329;
     347;
     365;
     363;
     396;
     419;
     443;
     445;
     483;
     503;
     518;
     555]

[b, r2, sigma2] = regressao_linear_multipla(n, v, p, x, y);

disp("% produzem os resultados")
fprintf("\nCoeficientes de regressão (b0, b1 e b2) =\n"); disp(b')
fprintf("\nCoeficientes de determinação =\n"); disp(r2)
fprintf("\nVariância residual =\n"); disp(sigma2)

modelo = sprintf('u = %f + %fx1 + %fx2', b(1), b(2), b(3));
fprintf("\nPortanto, a equação dos quadrados mínimos é\n");disp(modelo)


