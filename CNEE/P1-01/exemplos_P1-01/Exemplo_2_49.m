disp("% Os valores de entrada")
A = [10, 3, -2;
     2, 8, -1;
     1, 1, 5]
b = [57, 20, -4]
toler = 1e-05
iterMax = 50

disp("% produzem os resultados")
[x, iter, condErro] = gauss_seidel(A, b, toler, iterMax)