a = -1;
b = 2;
Toler = 0.01;
IterMax = 100;

f = @(x) 2*x^3 - cos(x + 1) - 3;

[Raiz, Iter, condErro] = secante(f, a, b, Toler, IterMax)