%   Fatora uma matriz A simétrica positiva, tal que A = LDTt
%   Os parâmetros de saída são A (contendo em sua diagonal a
%   diagonal de D e na parte triangular inferior o fator L sem
%   os elementos unitários) e o determinante

function [A, det] = decomp_LDLT(A)

    n = length(A);
    det = 1;
    for j = 1:n
        soma = 0;
        for k = 1:j-1
            soma = soma + A(j,k)^2 * A(k,k);
        end
        A(j,j) = A(j,j) - soma;
        r = 1/A(j,j); det = det*A(j,j);
        for i = j+1:n
            soma = 0;
            for k = 1:j-1
                soma = soma + A(i,k)*A(k,k)*A(j,k);
            end
            A(i,j) = (A(i,j) - soma) * r;
        end
    end
end