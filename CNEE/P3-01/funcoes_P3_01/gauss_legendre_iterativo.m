% GAUSS_LEGENDRE_ITERATIVO Integrar uma função iterativamente pelo método
% de Gauss-Legendre
%   
%   Parâmetros de entrada:
%    a = limite inferior
%    b = limite superior
%    Toler = tolerância
%    IterMax = número máximo de iterações
%
%   Parâmetros de saída:
%    Integral = valor da integral
%    Delta = menor diferença relativa obtida
%    CondErro = consição de erro, sendo:
%     - CondErro = 0, se Delta <= Toler;
%     - CondErro = 1, se Delta > Toler;

function [Integral, Delta, CondErro] = gauss_legendre_iterativo(f, a, b, Toler, IterMax)
    Iter = 1; n1 = 5; n2 = 8;
    [Int, CondErro] = gauss_legendre(f, a, b, n2);
    % disp([Iter n2 Int])
    % Sucessivos cálculos das integrais
    while 1
        Iter = Iter + 1; n = n1 + n2;
        [Integral, CondErro] = gauss_legendre(f, a, b, n);
        if Integral ~= 0
            Delta = abs((Integral - Int)/Integral);
        else
            Delta = abs(Integral - Int);
        end
        % disp([Iter n Integral Delta])
        if Delta <= Toler || Iter == IterMax
            break
        end
        Int = Integral; n1 = n2; n2 = n;
    end
    % Teste de convergêencia
    if Delta <= Toler
        CondErro = 0;
    else
        CondErro = 1;
    end
end