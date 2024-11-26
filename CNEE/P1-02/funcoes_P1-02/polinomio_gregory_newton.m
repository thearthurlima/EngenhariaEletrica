% r = valor_interpolado
% m = numero_de_pontos
% x = abcissas
% y = ordenadas
% z = valor_a_interpolar

function [r] = polinomio_gregory_newton(m, x, y, z)
    Dely = zeros(1, length(y));
    for i = 1:m
        Dely(i) = y(i);
    end
    % Construção de diferenças finitas
    for k = 1:m-1
        for i = m:-1:k+1
            Dely(i) = Dely(i) - Dely(i-1);
        end
    end
    % Avaliação do polinômio pelo processo de Horner
    u = (z - x(1))/(x(2) - x(1));
    r = Dely(m);
    for i = m-1:-1:1
        r = r * (u - i + 1)/i + Dely(i);
    end
end