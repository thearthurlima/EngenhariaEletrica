disp("% O parâmetro de entrada")

z = 5

disp("% produz os resultados")

f = @(x) 2*x.^3 - cos(x+1) - 3;
[a, b, condErro] = troca_sinal(f, z)

