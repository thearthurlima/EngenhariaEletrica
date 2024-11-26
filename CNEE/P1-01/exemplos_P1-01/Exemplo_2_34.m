disp("% Os valores de entrada")
A = [1+2i, -3i, 5;
     2+3i, 1+i, 1-i;
     4, 2i, 3-2i]

disp("% Produzem os resultados pela decomposição LU")
[A_decomposta, det, pivot] = decomp_LU(A)

disp("% vetor dos termos independentes")
b = [10-16i, -5+12i, 13+2i]

disp("% As substituições sucessivas pivotal produzem")
y = subst_sucessivas_pivotal(A_decomposta, b, pivot)

disp("% As substituições retroativas produzem")
x = subst_retroativas(A_decomposta, y)