disp("% Os valores de entrada")
A = [5, 2, 0, -1;
     1, 8, -3, 2;
     0, 1, 6 ,1;
     1, -1, 2, 9]

b = [6, 10, -5, 0]

toler = 1.000e-03 % e-03 é igual a 10^(-03)

iterMax = 50

disp("% produzem os resultados")
[x, iter, condErro] = jacobi(A, b, toler, iterMax);
fprintf("\nSolução  =  "); disp([sprintf('    %.5f', x)]);
fprintf("Iter     =  "); disp([sprintf('%d', iter)]);
fprintf("condErro =  "); disp([sprintf('%d', condErro)]);