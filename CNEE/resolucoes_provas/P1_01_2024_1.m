fprintf("\n\tCálculo Numérico - Prova 1.1 (2024.1)\n")
fprintf("\tDiscente: Arthur Lima dos Santos\n")
fprintf("\t**************************************\n\n")

format default

disp("--- 1ª questão -------------------------------")
disp("--- (Letra a) --------------------------------")

% Dados de entrada

A = [0.8,  3.7, -0.5, 1.1;
     1.5, -2.2, 1.8, 0.2;
     2.4, -1.6, 0.7, 1.3;
     0.4, 1.9, -1.0, 2.5];

b = [2.3, 0.6, 1.2, 3.2];

% Encontrando matriz decomposta de A, P e det
[A_LU, det, pivot] = decomp_LU(A);
[lower_A, upper_A] = extrair_LU_da_decomposta(A_LU);
P = matriz_de_pivotacao(pivot);

fprintf("\nMatriz L resultante da decomposição de A =\n\n"); disp(lower_A)
fprintf("\nMatriz U resultante da decomposição de A =\n\n"); disp(upper_A)
fprintf("\nMatriz de pivotação P =\n\n"); disp(P)
fprintf("\nDeterminante da matriz ="); disp(det)

disp("--- (Letra b) --------------------------------")

fprintf("\nResolução do sistema triangular inferior")
fprintf("\npor Substituições Sucessivas com Pivotação Parcial\n")

y_A = subst_sucessivas_pivotal(lower_A, b, pivot);
fprintf("\nVetor solução do sistema triangular inferior =\n\n"); disp(y_A')

fprintf("\nResolução do sistema triangular superior")
fprintf("\npor Substituições Retroativas\n")

x_A = subst_retroativas(upper_A, y_A);
fprintf("\nVetor solução do sistema triangular superior =\n\n"); disp(x_A')

disp("--- (Letra c) --------------------------------")

[eh_dominante, pode_ser_dominante, P2] = diagonal_dominante(A);

if eh_dominante
    fprintf("\nO sistema linear pode ser resolvido por um método\n")
    fprintf("iterativo, pois a matriz é estritamente diagonal dominante\n")
else
    fprintf("\nO sistema linear NÃO pode ser resolvido por um método\n")
    fprintf("iterativo, pois a matriz não é estritamente diagonal dominante\n")
end

if pode_ser_dominante
    fprintf("\nExiste uma permutação de linhas que torna possível\n")
    fprintf("a resolução do sistema por um método iterativo, a\n")
    fprintf("matriz encontrada a partir desta permutação é\n")
    A_permutada = A*P2;
    fprintf("\nMatriz A permutada =\n\n"); disp(A_permutada)
    
    %   Dados de entrada
    toler = 1e-05;
    iterMax = 50;

    [x_iterativo, iter, ~] = gauss_seidel(A_permutada, b, toler, iterMax);
    x_iterativo = x_iterativo*P';

    fprintf("\nPelo método de Gauss-Seidel, são necessárias %d iterações\n", iter)
    fprintf("para calcular a solução para tolerância de %.6e\n", toler)
    fprintf("\nVetor solução x pelo método iterativo =\n\n"); disp(x_iterativo')

else
    fprintf("\nNÃO existe uma permutação de linhas que torna possível\n")
    fprintf("a resolução do sistema por um método iterativo\n")
end

disp("--- (Letra d) --------------------------------")

num_cond_A = numero_condicao(A);
fprintf("\nNúmero de condição da matriz A =\n\n"); disp(num_cond_A)
fprintf("Esta matriz produz mal condicionamento, pois k(A) >> 1,")
fprintf("\nou seja, o número de condição da matriz é muito maior que 1.\n\n")

disp("--- (Letra e) --------------------------------")

criterio = 1e-4;
precisao = 2;
refinar_LU(A, b, criterio, precisao);

disp("--- 2ª questão -------------------------------")
disp("--- (Letra a) --------------------------------")

B = [4, 2, 1;
     2, 5, 2;
     1, 2, 3];

c = [1, 2, 3];

lower_B = cholesky(B);
upper_B = lower_B';

fprintf("\nMatriz L resultante da decomposição de B =\n\n"); disp(lower_B)

fprintf("\nResolução do sistema triangular inferior")
fprintf("\npor Substituições Sucessivas\n")

y_B = subst_sucessivas(lower_B, c)
fprintf("\nVetor solução do sistema triangular inferior =\n\n"); disp(y_B')

fprintf("\nResolução do sistema triangular superior")
fprintf("\npor Substituições Retroativas\n")

x_B = subst_retroativas(upper_B, y_B);
fprintf("\nVetor solução do sistema triangular superior =\n\n"); disp(x_B')

r_B = verificar_exatidao(B, c, x_B);
fprintf("\nVetor resíduo da solução =\n\n"); disp(r_B')

disp("----------------------------------------------")