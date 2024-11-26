Dy1 = @(x, y1, y2) y2;
Dy2 = @(x, y1, y2) 3*10^-6 * (1 + y2^2)^1.5 * (200 - x);

a = 0;
b = 200;
m = 20;
y10 = 0;
y20 = 0;

[VetX, VetY1, VetY2] = runge_kutta_4_sistema_2(Dy1, Dy2, a, b, m, y10, y20);

R = array2table([VetX', VetY1', VetY2'], 'VariableNames', {'VetX', 'VetY1', 'VetY2'});
disp(R);