% f(x) = 2*x.^3 - 0.4*x.^2 + 3*sin(x).*x

Toler = 0.01;
IterMax = 100;
a = -1;
c = 2;

f = @(x) 2*x.^3-cos(x+1)-3;

[Raiz, Iter, condErro] = muller(f, a, c, Toler, IterMax)
[Raiz2, Iter2, condErro2] = muller_melhorado(f, a, c, Toler, IterMax)

