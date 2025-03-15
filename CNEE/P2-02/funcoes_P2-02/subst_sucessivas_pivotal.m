%   Resolve sistema triangular inferior Ly = Pb pelas
%   substituições sucessivas com a matriz L obtida de
%   decomposição LU com pivotação parcial
%   L = Matriz triangular inferior
%   y = vetor solução
%   pivot = posição dos pivôs
%   b = vetor independente

function [y] = subst_sucessivas_pivotal(L, b, pivot)
    n = length(L);
    k = pivot(1); y(1) = b(k);
    for i = 2:n
        soma = 0;
        for j = 1:i-1
            soma = soma + L(i,j)*y(j);
        end
        k = pivot(i); y(i) = b(k) - soma;
    end
end