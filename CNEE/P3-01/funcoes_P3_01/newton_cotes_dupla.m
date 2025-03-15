% NEWTON_COTES_DUPLA Cálculo de integral dupla pelas fórmulas de
% Newton-Cotes
%   
%   Parâmetros de entrada:
%    ax = limite inferior em x
%    bx = limite superior em x
%    nx = grau do polinômio em x
%    mx = número de subintervalos em x
%    ay = limite inferior em y
%    by = limite superior em y
%    ny = grau do polinômio em y
%    my = número de subintervalos em y
%
%   Parâmetros de saída:
%    Integral = valor da integral
%    CondErro = consição de erro, sendo:
%     - CondErro = 0, se não houver erro de consistência dos parâmetros dados;
%     - CondErro = 1, se (n < 1 ou n > 8);
%     - CondErro = 2, se resto(m,n) ~= 0;
%     - CondErro = 3, se ambas as condições ocorrem;

function [Integral, CondErro] = newton_cotes_dupla(f, ax, bx, nx, mx, ay, by, ny, my)
    CondErro = 0; Integral = 0;

    d(1) = 2; d(2) = 6; d(3) = 8; d(4) = 90;
    d(5) = 288; d(6) = 840; d(7) = 17280; d(8) = 28350;
    
    c(1) = 1; c(2) = 1; c(3) = 4; c(4) = 1;
    c(5) = 3; c(6) = 7; c(7) = 32; c(8) = 12;
    c(9) = 19; c(10) = 75; c(11) = 50; c(12) = 41;
    c(13) = 216; c(14) = 27; c(15) = 272; c(16) = 751;
    c(17) = 3577; c(18) = 1323; c(19) = 2989; c(20) = 989;
    c(21) = 5888; c(22) = -928; c(23) = 10496; c(24) = -4540;

    if (nx < 1 || ny > 8) || (ny < 1 || ny > 8)
        CondErro = CondErro + 1; end
    if (mod(mx,nx) ~= 0) || (mod(my,ny) ~= 0) % resto(m,n)
        CondErro = CondErro + 2; end
    if CondErro ~= 0
        return; end

    % Cálculo da Integral
    px = fix(0.25*(nx*(nx+2)+mod(nx,2))); 
    py = fix(0.25*(ny*(ny+2)+mod(ny,2))); 
    hx = (bx-ax)/mx; hy = (by-ay)/my;
    for i = 0:mx
        x = ax + i*hx; jx = px + fix(0.5*nx - abs(mod(i,nx) - 0.5*nx));
        kx = 1 + fix((nx - mod(i,nx))/nx) - fix((mx - mod(i,mx))/mx);
        for j = 0:my
            y = ay + j*hy; jy = py + fix(0.5*ny - abs(mod(j,ny) - 0.5*ny));
            ky = 1 + fix((ny - mod(j,ny))/ny) - fix((my - mod(j,my))/my);
            fxy = f(x,y);   
            Integral = Integral + fxy*c(jx)*kx*c(jy)*ky;
            % if j == 0
            %     disp([i, x, c(jx)*kx, j, y, c(jy)*ky, fxy]);
            % else
            %     disp([j, y, c(jy)*ky, fxy]);
            % end
        end
    end
    Integral = nx*ny*hx*hy/(d(nx)*d(ny))*Integral;
end