% r = valor_interpolado
% m = numero_de_pontos
% x = abcissas
% y = ordenadas
% z = valor_a_interpolar

function [r] = polinomio_newton(m, x, y, z)
    Dely = zeros(1, lenght(y));
    for i = 1:m
        Dely(i) = y(i);
    end
    % Construção das diferenças divididas
    for k = 1:m-1
        for i = m:-1:k+1
            Dely(i) = (Dely(i) - Dely(i-1))/(x(i) - x(i-k));
        end
    end
    % Avaliação do polinômio pelo processo de Horner
    r = Dely(m);
    for i = m-1:-1:1
        r = r * (z - x(i)) + Dely(i);
    end
end