%   O algoritmo decomp_LDLT decompõe a matriz A
%   Este algoritmo NÃO realiza a decomposição LDLT, ele meramente
%   separa L e D da matriz já decomposta sobre A

function [L,D] = extrair_LDLT_da_decomposta(matriz_LDLt_sobre_A)
    n = length(matriz_LDLt_sobre_A);
    L = eye(n);
    D = zeros(n);
    for i = 1:n
        D(i,i) = matriz_LDLt_sobre_A(i,i);
        for j = i+1:n
            L(j,i) = matriz_LDLt_sobre_A(j,i) / D(i,i);
        end
    end
end