disp("% Os valores de entrada")
A = [4, -1, 0, -1;
     1, -2, 1, 0;
     0, 4, -4, 1;
     5, 0, 5, -1]

disp("% produzem os resultados pela decomposição LU")

%   Decompondo a matriz
[A_decomposta, det, pivot] = decomp_LU(A)

disp("% vetor de termos independentes")
b = [1, -2, -3 ,4]

disp("% As substituições sucessivas pivotal produzem")
y = subst_sucessivas_pivotal(A_decomposta, b, pivot)

disp("% As substituições retroativas produzem")
x = subst_retroativas(A_decomposta, y)