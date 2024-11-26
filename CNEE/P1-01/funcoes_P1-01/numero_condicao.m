function [num] = numero_condicao(A)
    invA = inv(A);
    num = norm(A, inf) * norm(invA, inf);
end