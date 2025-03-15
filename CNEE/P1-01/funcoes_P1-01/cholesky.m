function [L, det, CondErro] = cholesky(A)

% CHOLESKY Faz uma decomposição LL^t de uma matriz A
% simétrica e definida positiva
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
%       L: fator
%       det: determinante
%       CondErro: condição de erro

    n = length(A);
    CondErro = 0; det = 1;
    for j = 1:n
        soma = 0;
        for k = 1:j-1
            soma = soma + A(j,k)^2;
        end
        t = A(j,j) - soma;
        if t > 0
            A(j,j) = sqrt(t); r = 1/A(j,j); det = det*t;
        else
            CondErro = 1;
            disp("A matriz não é definida positiva")
            return
        end
        for i = j+1:n
            soma = 0;
            for k = 1:j-1
                soma = soma + A(i,k)*A(j,k);
            end
            A(i,j) = (A(i,j) - soma)*r;
        end
    end
    for i = 1:n % Zera toda a parte não inferior da matriz
        for j = i+1:n
            A(i,j) = 0;
        end
    end
    L = A; % Copia a matriz decomposta para L
end