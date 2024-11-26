% r = valor_interpolado
% m = numero_de_pontos
% x = abcissas
% y = ordenadas
% z = valor_a_interpolar

function [r] = polinomio_lagrange(m, x, y, z)
    r = 0;
    for i = 1:m
        c = 1; d = 1;
        for j = 1:m
            if i ~= j
                c = c * (z - x(j)); d = d * (x(i) - x(j));
            end
        end
        r = r + y(i) * c/d;
    end
end