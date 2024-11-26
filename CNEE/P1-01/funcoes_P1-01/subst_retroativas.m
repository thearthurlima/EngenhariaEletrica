function [x] = subst_retroativas(U, d)

% SUBST_RETROATIVAS Resolve um sistema triangular
% superior Ux = d pelas substituições retroativas
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
%       U: matriz triangular superior
%       d: vetor independente
%
%   Parâmetros de saída:
%       x: solução do sistema triangular superior

    n = length(U);
    x = zeros(1,n); % Aloca um vetor de zeros 
    x(n) = d(n)/U(n,n);
    for i = n-1:-1:1
        soma = 0;
        for j = i+1:n
            soma = soma + U(i,j)*x(j);
        end
        x(i) = (d(i) - soma)/U(i,i);
    end
end