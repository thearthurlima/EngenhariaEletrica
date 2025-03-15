function [x] = subst_sucessivas_pivotal(L, c, pivot)

% SUBST_SUCESSIVAS_PIVOTAL Resolve um sistema triangular inferior
% Lx = Pc pelas substituições sucessivas com pivotação parcial
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
%       U: matriz triangular inferior
%       c: vetor independente
%
%   Parâmetros de saída:
%       x: solução do sistema triangular inferior

    n = length(L);
    x = zeros(1,n); % Aloca um vetor de zeros 
    k = pivot(1); x(1) = c(k);
    for i = 2:n
        soma = 0;
        for j = 1:i-1
            soma = soma + L(i,j)*x(j);
        end
        k = pivot(i); x(i) = c(k) - soma;
    end
end