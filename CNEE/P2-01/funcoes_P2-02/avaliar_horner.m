function [y] = avaliar_horner(n, c, a)
% AVALIAR_HORNER Avalia um polinômio de grau n no ponto a
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
%       n: grau do polinômio
%       c: coeficientes, onde P(x) = c(1)x^n + c(2)x^(n-1) + ... + c(n+1)
%       a: ponto a ser avaliado
%
%   Parâmetros de saída:
%       y: ordenada a P(a)

    y = c(1);
    for i = 2:n+1
        y = y * a + c(i);
    end
end