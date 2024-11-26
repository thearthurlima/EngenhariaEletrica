% METODO_EULER_MELHORADO Resolve um PVI pelo método de Euler
%   
%   Parâmetros de entrada:
%    a = limite inferior
%    b = limite superior
%    m = número de subintervalos
%    y0 = valor inicial
%
%   Parâmetros de saída:
%    VetX = abcissas
%    VetY = solução do PVI

function [VetX, VetY] = metodo_euler_melhorado(f, a, b, m, y0)
    h = (b - a)/m; x = a; y = y0;
    Fxy = f(x,y) + f(x+h,y+h*f(x,y)); % <- Modificação do método
    VetX(1) = x; VetY(1) = y;
    for i = 1:m
        x = a + i*h;
        y = y + h/2*Fxy;
        Fxy = f(x,y) + f(x+h,y+h*f(x,y)); % <- Modificação do método
        % disp([i x y Fxy]);
        VetX(i+1) = x; VetY(i+1) = y;
    end
end