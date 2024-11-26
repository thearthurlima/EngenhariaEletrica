f = @(x,y) sin(x^2 + y^2);

ax = 2;
bx = 5;
nx = 3;
mx = 3;
ay = 0;
by = 1;
ny = 2;
my = 4;

[Integral, CondErro] = newton_cotes_dupla(f, ax, bx, nx, mx, ay, by, ny, my);

fprintf('\nIntegral = %.10f\n', Integral);
fprintf('CondErro = %d\n\n', CondErro);
