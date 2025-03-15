function [A, det, pivot] = decomp_LU(A)

% DECOMP_LU Faz a decomposição LU de uma matriz A
%
%   ╔═════════════════════════════════════════════╗
%   ║ Implementação: Arthur Lima dos Santos, 2024 ║
%   ║ Contato: santos.arthur@discente.ufma.br     ║
%   ╠═════════════════════════════════════════════╣
%   ║ Baseado em: Algoritmos Numéricos, 4ª Ed.    ║
%   ║ Autor: Frederico Ferreira Campos Filho      ║
%   ╚═════════════════════════════════════════════╝
%
%   Parâmetros de entrada:
%       A: matriz a ser decomposta
%
%   Parâmetros de saída:
%       A: matriz decomposta A = U + L - I
%       det: determinante
%       pivot: pivôs

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