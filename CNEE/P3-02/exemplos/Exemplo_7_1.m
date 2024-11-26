% clc; close all;

Dy = @(x, y) x - 2*y + 1;
f = @(x) 1/4 * (3*exp(-2*x)+2*x+1);
a = 0;
b = 1;
m = 10;
y0 = 1;

[VetX, VetY] = metodo_euler(Dy, a, b, m, y0);
R = array2table([VetX', VetY'], 'VariableNames', {'VetX', 'VetY'});
disp(R);

edo_scatter_comparative_plot(f, a, b, 0.001, VetX, VetY, '', 'z', 'f(x,y)');