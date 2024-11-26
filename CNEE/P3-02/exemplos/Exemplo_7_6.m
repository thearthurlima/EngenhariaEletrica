Dy = @(x, y) x - 2*y + 1; 
a = 0;
b = 1;
m = 10;
y0 = 1;

[VetX, VetY, Erro] = adams_bashforth_moulton(Dy, a, b, m, y0);

R = array2table([VetX', VetY', Erro'], 'VariableNames', {'VetX', 'VetY', 'Erro'});
disp(R);