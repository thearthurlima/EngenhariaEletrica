f = @(x) sin(x);
m = 6;
a = 0;
b = pi;

fprintf('Para n = 2\n\n')

n = 2;
[IntegralN2, CondErro] = newton_cotes(f, a, b, n, m);

R1 = array2table([IntegralN2 CondErro]);
R1.Properties.VariableNames = {'Integral', 'CondErro'};
disp(R1)

fprintf('Para n = 3\n\n')

n = 3;
[IntegralN3, CondErro] = newton_cotes(f, a, b, n, m);

R2 = array2table([IntegralN3 CondErro]);
R2.Properties.VariableNames = {'Integral', 'CondErro'};
disp(R2)
