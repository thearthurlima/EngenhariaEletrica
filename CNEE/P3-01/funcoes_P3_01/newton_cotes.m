% NEWTON_COTES Integrar uma função pelo método de Newton-Cotes
%   
%   Parâmetros de entrada:
%    a = limite inferior
%    b = limite superior
%    n = grau do polinômio
%    m = número de subintervalos
%
%   Parâmetros de saída:
%    Integral = valor da integral
%    CondErro = consição de erro, sendo:
%     - CondErro = 0, se não houver erro de consistência dos parâmetros dados;
%     - CondErro = 1, se (n < 1 ou n > 8);
%     - CondErro = 2, se resto(m,n) ~= 0;
%     - CondErro = 3, se ambas as condições ocorrem;

function [Integral, CondErro] = newton_cotes(f, a, b, n, m)
    CondErro = 0; Integral = 0;

    d(1) = 2; d(2) = 6; d(3) = 8; d(4) = 90;
    d(5) = 288; d(6) = 840; d(7) = 17280; d(8) = 28350;
    
    c(1) = 1; c(2) = 1; c(3) = 4; c(4) = 1;
    c(5) = 3; c(6) = 7; c(7) = 32; c(8) = 12;
    c(9) = 19; c(10) = 75; c(11) = 50; c(12) = 41;
    c(13) = 216; c(14) = 27; c(15) = 272; c(16) = 751;
    c(17) = 3577; c(18) = 1323; c(19) = 2989; c(20) = 989;
    c(21) = 5888; c(22) = -928; c(23) = 10496; c(24) = -4540;

    % Consistência de parâmetros
    if n < 1 || n > 8
        CondErro = CondErro + 1; end
    if mod(m,n) ~= 0 % resto(m,n)
        CondErro = CondErro + 2; end
    if CondErro ~= 0
        return; end

    % Cálculo da Integral
    p = fix(0.25*(n*(n+2)+mod(n,2))); h = (b-a)/m;
    for i = 0:m
        x = a + i*h;
        y = f(x);
        j = p + fix(0.5*n - abs(mod(i,n) - 0.5*n));
        k = 1 + fix((n - mod(i,n))/n) - fix((m - mod(i,m))/m);
        Integral = Integral + y*c(j)*k;
        % disp([i, x, y, c(j)*k]);
    end
    Integral = n*h/d(n)*Integral;
end