% a = limite inferior
% b = limite superior
% m = número de subintervalos
% y10, y20 = valores iniciais
% VetX = abcissas
% VetY1, VetY2 = soluções do PVI

% Resolver um sistema de EDO pelo método Runge-Kutta de ordem 4

function [VetX, VetY1, VetY2] = runge_kutta_4_sistema_2(f1, f2, a, b, m, y10, y20)
    h = (b-a)/m; xt = a; y1t = y10; y2t = y20;
    VetX(1) = xt; VetY1(1) = y1t; VetY2(1) = y2t;
    % disp([0 xt y1t y2t]);
    for i = 1:m
        x = xt; y1 = y1t; y2 = y2t;
        k11 = f1(x,y1,y2);
        k12 = f2(x,y1,y2);
        x = xt + h/2; y1 = y1t + h/2*k11; y2 = y2t + h/2*k12;
        k21 = f1(x,y1,y2);
        k22 = f2(x,y1,y2);
        y1 = y1t + h/2*k21; y2 = y2t + h/2*k22;
        k31 = f1(x,y1,y2);
        k32 = f2(x,y1,y2);
        x = xt + h; y1 = y1t + h*k31; y2 = y2t + h*k32;
        k41 = f1(x,y1,y2);
        k42 = f2(x,y1,y2);
        xt = a + i*h;
        y1t = y1t + h/6*(k11 + 2*(k21 + k31) + k41);
        y2t = y2t + h/6*(k12 + 2*(k22 + k32) + k42);
        % disp([i xt y1t y2t]);
        VetX(i+1) = xt; VetY1(i+1) = y1t; VetY2(i+1) = y2t;
    end
end