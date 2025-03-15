% GAUSS_LEGENDRE Integrar uma função pelo método de Gauss_Legendre
%   
%   Parâmetros de entrada:
%    a = limite inferior
%    b = limite superior
%    n = número de pontos
%
%   Parâmetros de saída:
%    Integral = valor da integral
%    CondErro = consição de erro, sendo:
%     - CondErro = 0, se não houver erro (n >= 1);
%     - CondErro = 1, se n < 1;

function [Integral, CondErro] = gauss_legendre(f, a, b, n)
    Integral = 0;
    % Cálculo dos pesos e abscissas
    [Avet, Tvet, CondErro] = pes_abs_GL(n);
    if CondErro ~= 0
        return
    end
    % Cálculo da integral
    e1 = (b - a)/2;
    e2 = (a + b)/2;
    if mod(n,2) == 0
        c1 = 1; c2 = 0.5;
    else
        c1 = 0; c2 = 1;
    end
    for i = 1:n
        k = fix(i - 0.5*(n+1) + sign(i - 0.5*(n + c1))*c2);
        t = sign(k)*Tvet(abs(k));
        x = e1*t + e2;
        y = f(x);
        c = Avet(abs(k));
        Integral = Integral + y*c;
        % disp([i t x y c])
    end
    Integral = e1*Integral;
end