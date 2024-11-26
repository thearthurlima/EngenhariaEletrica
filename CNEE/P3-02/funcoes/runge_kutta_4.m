% a = limite inferior
% b = limite superior
% m = número de subintervalos
% y0 = valor inicial
% VetX = abcissas
% VetY = solução do PVI

% Resolver um PVI pelo método de Runge Kutta de ordem 4

function [VetX, VetY] = runge_kutta_4(f, a, b, m, y0)
    h = (b - a)/m; xt = a; yt = y0; VetX(1) = xt; VetY(1) = yt;
    % disp([0 xt yt]);
    for i = 1:m
        x = xt; y = yt; k1 = f(x,y); % Avaliar f(x,y)
        x = xt + h/2; y = yt + h/2 * k1; k2 = f(x,y); % Avaliar f(x,y)
        y = yt + h/2 * k2; k3 = f(x,y); % Avaliar f(x,y)
        x = xt + h; y = yt + h * k3; k4 = f(x,y); % Avaliar f(x,y)
        xt = a+i*h; yt = yt + h/6 * (k1 + 2 * (k2 + k3) + k4);
        % disp([i xt yt]);
        VetX(i+1) = xt; VetY(i+1) = yt;
    end
end