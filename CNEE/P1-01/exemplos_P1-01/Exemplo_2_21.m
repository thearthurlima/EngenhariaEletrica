disp("% Os valores de entrada")
L = [2, 0, 0, 0;
     3, 5, 0, 0;
     1, -6, 8, 0;
     -1, 4, -3, 9]

c = [4, 1, 48, 6]

disp("% produzem o resultado")
x = subst_sucessivas(L, c)

disp("% Vetor resíduo")
r = (c' - L * x')'
