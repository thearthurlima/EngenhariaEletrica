disp("% Os valores de entrada")
A = [9, 6, -3, 3;
    6, 20, 2, 22;
    -3, 2, 6, 2;
    3, 22, 2, 28]

disp("% produzem os resultados pela decomposição de Cholesky")
[L, det, condErro] = cholesky(A)

disp("% vetor de termos independentes")
b = [12, 64, 4, 82]

disp("% As substituições sucessivas resultam em")
y = subst_sucessivas(L, b)

disp("% As substituições retroativas resultam em")
x = subst_retroativas(L', y) %O operador ' é a transposta

disp("% Vetor resíduo", r)
%r = verificar_exatidao(A, b, x)
