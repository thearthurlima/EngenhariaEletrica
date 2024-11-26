% n = grau
% c = coeficientes, onde P(x) = c(1)x^n + c(2)x^(n-1) + ... + c(n+1)
% a = ponto a ser avaliado
% y = ordenada a P(a)

function [y] = avaliar_horner(n, c, a)
% Avaliar um polinômio de grau n no ponto a
    y = c(1);
    for i = 2:n+1
        y = y * a + c(i);
    end
end