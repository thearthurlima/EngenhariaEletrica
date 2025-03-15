f = @(x) 4/(1 + x^2);
a = 0;
b = 1;
n = 10;

[Integral, CondErro] = gauss_legendre(f, a, b, n);

fprintf('\nIntegral = %.10f\n', Integral);
fprintf('CondErro = %d\n\n', CondErro);