function [x] = subst_sucessivas(L, c)

% SUBST_SUCESSIVAS Resolve um sistema triangular
% inferior Lx = c pelas substituições sucessivas
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
%       L: matriz triangular inferior
%       c: vetor independente
%
%   Parâmetros de saída:
%       x: solução do sistema triangular inferior

    n = length(L);
    x = zeros(1, n); % Aloca um vetor de zeros 
    x(1) = c(1)/L(1,1);
    for i = 2:n
        soma = 0;
        for j = 1:i-1
            soma = soma + L(i,j)*x(j);
        end
        x(i) = (c(i) - soma)/L(i,i);
    end
end