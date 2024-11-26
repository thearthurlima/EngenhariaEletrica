disp("% Os valores de entrada")
A = [10, 3, -2;
     2, 8 , -1;
     1, 1, 5]

b = [57, 20, -4]

toler = 1.000e-05 % e-05 é igual a 10^(-05)

iterMax = 50

disp("% produzem os resultados")
[x, iter, condErro] = jacobi(A, b, toler, iterMax);
fprintf("\nSolução  =  "); disp([sprintf('    %.5f', x)]);
fprintf("Iter     =  "); disp([sprintf('%d', iter)]);
fprintf("condErro =  "); disp([sprintf('%d', condErro)]);