% GAUSS_LEGENDRE Integrar uma função pelo método de Gauss_Legendre
%   
%   Parâmetros de entrada:
%    ax = limite inferior em x
%    bx = limite superior em x
%    nx = número de pontos em x
%    ay = limite inferior em y
%    by = limite superior em y
%    ny = número de pontos em y
%
%   Parâmetros de saída:
%    Integral = valor da integral
%    CondErro = consição de erro, sendo:
%     - CondErro = 0, se não houver erro (nx >= 1 e ny >= 1);
%     - CondErro = 1, se nx < 1 ou ny < 1;

function [Integral, CondErro] = gauss_legendre_dupla(f, ax, bx, nx, ay, by, ny)
    Integral = 0;
    % Cálculo dos pesos e abscissas
    [Avet, Tvet, CondErro] = pes_abs_GL(nx);
    if CondErro ~= 0
        return
    end
    if ny == nx
        for j = 1:fix(0.5*(nx + 1))
            Bvet(j) = Avet(j); Uvet(j) = Tvet(j);
        end
    else
        [Bvet, Uvet, CondErro] = pes_abs_GL(ny);
        if CondErro ~= 0
            return
        end
    end

    % Cálculo da integral dupla
    ex1 = (bx - ax)/2; ex2 = (ax + bx)/2;
    ey1 = (by - ay)/2; ey2 = (ay + by)/2;
    if mod(nx,2) == 0
        cx1 = 1; cx2 = 0.5;
    else
        cx1 = 0; cx2 = 1;
    end
    if mod(ny,2) == 0
        cy1 = 1; cy2 = 0.5;
    else
        cy1 = 0; cy2 = 1;
    end
    for i = 1:nx
        kx = fix(i - 0.5*(nx+1) + sign(i - 0.5*(nx + cx1))*cx2);
        tx = sign(kx)*Tvet(abs(kx)); Axx = Avet(abs(kx));
        x = ex1*tx + ex2; soma = 0;
        for j = 1:ny
            ky = fix(j - 0.5*(ny+1) + sign(j - 0.5*(ny + cy1))*cy2);
            ty = sign(ky)*Uvet(abs(ky)); Ayy = Bvet(abs(ky));
            y = ey1*ty + ey2;
            fxy = f(x,y);
            soma = soma + Ayy*fxy;
            % if j == 0
            %     disp([i, tx, x, Axx, j, ty, y, Ayy, fxy]);
            % else
            %     disp([j, ty, y, Ayy, fxy]);
            % end
        end
        Integral = Integral + Axx*soma;
    end
    Integral = ex1*ey1*Integral;
end
