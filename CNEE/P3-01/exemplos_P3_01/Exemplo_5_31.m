f = @(x,y) sqrt(x^2 + y)*cos(x*y);

ax = 2;
bx = 6;
nx = 5;
ay = 1;
by = 3;
ny = 4;

[Integral, CondErro] = gauss_legendre_dupla(f, ax, bx, nx, ay, by, ny);

fprintf('\nIntegral = %.10f\n', Integral);
fprintf('CondErro = %d\n\n', CondErro);
