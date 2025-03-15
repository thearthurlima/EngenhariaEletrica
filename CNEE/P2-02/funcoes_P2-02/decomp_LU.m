%   Faz a decomposição de uma matriz A em LU sobre a matriz orignal A
%   via método de eliminação de Gauss com pivotação parcial
%   det = determinante de A
%   pivot = vetor contendo as linhas pivotais

%   A solução por decomposição LU segue que
%   Ux = y, então, Ly = Pb
%   O sistema triangular inferior Ly = Pb é calculado por substituições
%   sucessivas pivotal, enquanto o sistema Ux = y é calculado por
%   substituições retroativas

function [A, det, pivot] = decomp_LU(A)
    n = length(A);
    pivot = zeros(1,n);
    for i = 1:n
        pivot(i) = i; det = 1;
    end
    for j = 1:n-1
        % Escolha do elemento pivô
        p = j;
        Amax = abs(A(j,j));
        for k = j+1:n
            if abs(A(k,j)) > Amax
                Amax = abs(A(k,j)); p = k;
            end
        end
        if p ~= j
            % Troca de linhas
            for k = 1:n
                t = A(j,k); A(j,k) = A(p,k); A(p,k) = t;
            end
            m = pivot(j); pivot(j) = pivot(p); pivot(p) = m;
            det = -det;
        end
        det = det * A(j,j);
        if abs(A(j,j)) ~= 0
            % Eliminação de Gauss
            r = 1/A(j,j);
            for i = j+1:n
                mult = A(i,j) * r; A(i,j) = mult;
                for k = j+1:n
                    A(i,k) = A(i,k) - mult * A(j,k);
                end
            end
        end
    end
    det = det * A(n,n);
end