fprintf("\n\tCálculo Numérico - Prova 1.1 (2023.2)\n")
fprintf("\tDiscente: Arthur Lima\n")
fprintf("\t**************************************\n\n")

format default 

disp("--- 1ª questão -------------------------------")
disp("--- (Letra a) --------------------------------")

%   Dados de entrada
A = [4.3, 0.8, 22.7, 8.8;
     10.5, 1.0, 0.0, 2.4;
     5.1, 9.3, 2.0, 1.2;
     7.4, 1.1, 7.1, 19.7];
b = [3.5, 9.3, 7.1, 1.2];

%   Encontrando a matriz L\U sobre A
[A_LU, det, pivot] = decomp_LU(A);

%   Extraindo L, U e P resultantes da fatoração
[lower_A,upper_A] = extrair_LU_da_decomposta(A_LU);
fprintf("\nMatriz L resultante da decomposição de A =\n\n"); disp(lower_A)
fprintf("\nMatriz U resultante da decomposição de A =\n\n"); disp(upper_A)

%   Encontrando matriz de pivotação a partir do vetor pivot
P = matriz_de_pivotacao(pivot);
fprintf("\nMatriz P =\n\n"); disp(P)

%   Exibindo o determinante
fprintf("\nDeterminante = "); disp(det)

disp("--- (Letra b) --------------------------------")

fprintf("\n%% Resolução do sistema triangular inferior")
fprintf("\n%% por substituições sucessivas pivotal\n")

y_A = subst_sucessivas_pivotal(A_LU, b, pivot);
%   Exibindo como coluna (y^t)
fprintf("\ny =\n\n"); disp(y_A')

fprintf("%% Utilizando y como vetor de termos")
fprintf("\n%% independentes para resolver o sistema")
fprintf("\n%% triangular superior, encontraremos o")
fprintf("\n%% vetor solução do sistema linear\n")

x_A = subst_retroativas(A_LU, y_A);
%   Exibindo como coluna (x^t)
fprintf("\nVetor solução x =\n\n"); disp(x_A')

residuo_A = (verificar_exatidao(A, b, x_A));
fprintf("\nVetor resíduo =\n\n"); disp(residuo_A')

disp("--- (Letra c) --------------------------------")

[eh_dominante, pode_ser_dominante, P] = diagonal_dominante(A);

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
    A_permutada = A*P;
    fprintf("\nMatriz A permutada =\n\n"); disp(A_permutada)
    
    %   Dados de entrada
    toler = 1.0000e-05;
    iterMax = 50;

    [x_iterativo, iter, ~] = gauss_seidel(A_permutada, b, toler, iterMax);

    fprintf("\nPelo método de Jacobi, são necessárias %d iterações\n", iter)
    fprintf("para calcular a solução para tolerância de %.6e\n", toler)
    fprintf("\nVetor solução x =\n\n"); disp(x_iterativo')

else
    fprintf("\nNÃO existe uma permutação de linhas que torna possível\n")
    fprintf("a resolução do sistema por um método iterativo\n")
end

disp("--- 2ª questão -------------------------------")
disp("--- (Letra a) --------------------------------")

%   Dados de entrada
B = [4, -1, 1;
     -1, 4.25, 2.75;
     1, 2.75, 3.5];
c = [2, 1, 0];

B_cholesky = cholesky(B);
fprintf("\nL =\n\n"); disp(B_cholesky)

fprintf("\n%% Resolução do sistema triangular inferior")
fprintf("\n%% por substituições sucessivas\n")

y_B = subst_sucessivas(B_cholesky, c);
fprintf("\ny =\n\n"); disp(y_B')

fprintf("%% Utilizando y como vetor de termos")
fprintf("\n%% independentes para resolver o sistema")
fprintf("\n%% triangular superior, encontraremos o")
fprintf("\n%% vetor solução do sistema linear\n")

x_B = subst_retroativas(B_cholesky', y_B);
fprintf("\nx =\n\n"); disp(x_B')

residuo_B = verificar_exatidao(B, c, x_B);
fprintf("\nVetor resíduo =\n\n"); disp(residuo_B')



