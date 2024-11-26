% a = limite inferior
% b = limite superior
% m = número de subintervalos
% y0 = valor inicial
% VetX = abcissas
% VetY = solução do PVI
% EL = erro local

% Resolver um PVI pelo método de

function [VetX, VetY, EL] = dormand_prince(f, a, b, m, y0)
    % Parâmetros do método
    a21 = 1/5;
    a31 = 3/40; a32 = 9/40;
    a41 = 44/45; a42 = -56/15; a43 = 32/9;
    a51 = 19372/6561; a52 = -25360/2187; a53 = 64448/6561; a54 = -212/729;
    a61 = 9017/3168; a62 = -355/33; a63 = 46732/5247; a64 = 49/176; a65 = -5103/18656;
    a71 = 35/384; a73= 500/1113; a74 = 125/192; a75 = -2187/6784; a76 = 11/84;
    
    c2 = 1/5; c3 = 3/10; c4 = 4/5; c5 = 8/9; c6 = 1; c7 = 1;
    e1 = 71/57600; e3 = -71/16695; e4 = 71/1920; e5 = -17253/339200; e6 = 22/525; e7 = -1/40;

    h = (b - a)/m; xt = a; yt = y0;
    VetX(1) = xt; VetY(1) = yt; EL = 0;
    % disp([0 xt yt]);
    for i = 1:m
        x = xt; y = yt;
        k1 = h * f(x,y);
        x = xt + c2 * h; y = yt + a21*k1;
        k2 = h * f(x,y);
        x = xt + c3 * h; y = yt + a31*k1 + a32*k2;
        k3 = h * f(x,y);
        x = xt + c4 * h; y = yt + a41*k1 + a42*k2 + a43*k3;
        k4 = h * f(x,y);
        x = xt + c5 * h; y = yt + a51*k1 + a52*k2 + a53*k3 + a54*k4;
        k5 = h * f(x,y);
        x = xt + c6 * h; y = yt + a61*k1 + a62*k2 + a63*k3 + a64*k4 + a65*k5;
        k6 = h * f(x,y);
        x = xt + c7 * h; y = yt + a71*k1 + a73*k3 + a74*k4 + a75*k5 + a76*k6;
        k7 = h * f(x,y);
        xt = a + i*h;
        yt = yt + a71*k1 + a73*k3 + a74*k4 + a75*k5 + a76*k6;
        ErroLocal = e1*k1 + e3*k3 + e4*k4 + e5*k5 + e6*k6 + e7*k7;
        VetX(i+1) = xt; VetY(i+1) = yt; EL(i+1) = ErroLocal;
        % disp([i xt yt ErroLocal]);
    end
end