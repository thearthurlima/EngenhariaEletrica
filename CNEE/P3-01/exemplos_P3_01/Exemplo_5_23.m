f = @(x) sin(x);
a = 0;
b = pi;

fprintf('Para n = 5\n\n')

n = 5;
[IntegralN5, CondErro] = gauss_legendre(f, a, b, n);

fprintf('Integral = %.10f\n', IntegralN5);
fprintf('CondErro = %d\n\n', CondErro);

fprintf('Para n = 6\n\n')

n = 6;
[IntegralN6, CondErro] = gauss_legendre(f, a, b, n);

fprintf('Integral = %.10f\n', IntegralN6);
fprintf('CondErro = %d\n\n', CondErro);
