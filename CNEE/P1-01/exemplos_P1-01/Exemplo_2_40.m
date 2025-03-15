disp("% Os valores de entrada")

A = [5, -1, 2;
     -1, 8, 4;
     2, 4, 10]

b = [21, 10, 50]

disp("% produzem o valor pela decomposição LDLt")

[A_decomposta, det] = decomp_LDLT(A)

[L,D] = extrair_LDLT_da_decomposta(A_decomposta)