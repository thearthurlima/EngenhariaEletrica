% P(x) = x.^4 + 2*x.^3 - 13*x.^2 - 14*x + 24
% P'(x) = 4*x.^3 + 6*x.^2 - 26*x - 14

x0 = 4;
Toler = 1e-5
IterMax = 100;

f = @(x) x.^4 + 2*x.^3 - 13*x.^2 - 14*x + 24;
df = @(x) 4*x.^3 + 6*x.^2 - 26*x - 14;

[Raiz, Iter, condErro] = newton(f, df, x0, Toler, IterMax)