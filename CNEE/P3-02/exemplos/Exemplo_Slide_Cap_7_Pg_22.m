Dy = @(x,y) -2*x*y^2;
f_exata = @(x) 1./(x.^2+2);
y0 = 0.5;
a = 0;
b = 1;
m = 10;

[VetX1, VetY1] = metodo_euler(Dy, a, b, m, y0);
[VetX2, VetY2] = metodo_euler_modificado(Dy, a, b, m, y0);
[VetX3, VetY3] = metodo_euler_melhorado(Dy, a, b, m, y0);

VetExato = f_exata(VetX1);
ErroE = abs(VetY1 - VetExato);
ErroEmod = abs(VetY2 - VetExato);
ErroEmelh = abs(VetY3 - VetExato);

T = array2table([VetX1', ErroE', ErroEmod', ErroEmelh',], ...
    'VariableNames',{'VetX', 'Erro E', 'Erro Emod', 'Erro Emelh'});
disp(T);