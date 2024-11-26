% Verifica o vetor resíduo de uma solução seguindo
% a expressão r = b - Ax

function [vetor_residuo] = verificar_exatidao(A, b, x)
    vetor_residuo = (b' - A * x')'; %O operador ' é a transposta
end