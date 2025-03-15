function [matriz_pivot] = matriz_de_pivotacao(pivot)

% MATRIZ_DE_PIVOTACAO Encontra a matriz de pivotação
% a partir de um vetor pivot
%
%   ╔═════════════════════════════════════════════╗
%   ║ Autor: Arthur Lima dos Santos, 2024         ║
%   ║ Contato: santos.arthur@discente.ufma.br     ║
%   ╚═════════════════════════════════════════════╝
%
%   Parâmetros de entrada:
%       pivot: vetor de pivotação
%
%   Parâmetros de saída:
%       matriz_pivot: matriz de pivotação

    n = length(pivot);
    matriz_I = eye(n);
    matriz_pivot = matriz_I(pivot, :);
end