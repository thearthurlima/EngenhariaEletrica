% n ´= ordem
% c = coeficientes, onde P(x) = c(1)x^n + c(2)x^(n-1) + ... + c(n+1)

function [max_positivas, max_negativas] = regra_sinais_descartes(n, c)
    permanencia = 0;
    alternancia = 0;
    for i = 1:n
        if c(i) * c(i+1) > 0
            permanencia = permanencia + 1;
        else
            alternancia = alternancia + 1;
        end
    end
    max_negativas = permanencia;
    max_positivas = alternancia;
end