f = @(x,y) y^2*log10(3*x);

ax = 1;
bx = 4;
nx = 3;
ay = 0;
by = 2;
ny = 4;

[Integral, CondErro] = gauss_legendre_dupla(f, ax, bx, nx, ay, by, ny);

fprintf('\nIntegral = %.10f\n', Integral);
fprintf('CondErro = %d\n\n', CondErro);
