Dy = @(x, y) x - 2*y + 1; 
a = 0;
b = 1;
m = 10;
y0 = 1;

[VetX, VetY, EL] = dormand_prince(Dy, a, b, m, y0);

R = array2table([VetX', VetY', EL'], 'VariableNames', {'VetX', 'VetY', 'Erro'});
disp(R);