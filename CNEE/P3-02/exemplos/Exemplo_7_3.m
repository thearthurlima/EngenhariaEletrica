Dy = @(x, y) x - 2*y + 1; 
a = 0;
b = 1;
m = 10;
y0 = 1;

[VetX, VetY] = runge_kutta_4(Dy, a, b, m, y0);

format short
R = array2table([VetX', VetY'], 'VariableNames', {'VetX', 'VetY'});
disp(R);