    % Aplicação de integral dupla
    % UNIVASF - Universidade Federal do Vale do São Francisco
    % Disponibilizado por Professor Dr. Lino Marcos da Silva
    % Integrais Múltiplas 15 - Slide 5 - Exemplo 8

% Declaração das funções
h = @(x,y) exp(-5000*((x-4)^2 + (y-6)^2));
f = @(x) 5000/pi * x;

ay = 5.98; by = 6.02; nx = 6;
ax = 3.98; bx = 4.02; ny = 6;

m1 = 12; m2 = 12;

% Integração por Newton-Cotes
[integral_NC1, CondErro1] = newton_cotes_dupla(h, ax, bx, 1, m1, ay, by, 1, m2);  % Trapezio
[integral_NC2, CondErro2] = newton_cotes_dupla(h, ax, bx, 2, m1, ay, by, 2, m2);  % 1/3 Simpson
[integral_NC3, CondErro3] = newton_cotes_dupla(h, ax, bx, 3, m1, ay, by, 3, m2);  % 3/8 Simpson
[integral_GL, CondErro4] = gauss_legendre_dupla(h, ax, bx, nx, ay, by, ny);

% Construção das tabelas de resultado
R_Newton = [integral_NC1, CondErro1; integral_NC2, CondErro2; integral_NC3, CondErro3];
T_Newton = array2table(R_Newton, 'RowNames', {'n = 1', 'n = 2', 'n = 3'}, 'VariableNames', {'Integral', 'CondErro'});
R_Gauss = [integral_GL, CondErro4];
T_Gauss = array2table(R_Gauss, 'VariableNames', {'Integral', 'CondErro'});

format long

% Exibição dos resultados das duas integrais
fprintf('\n    - Integral por Newton-Cotes\n\n');
disp(T_Newton);
fprintf('\n    - Integral por Gauss-Legendre\n\n');
disp(T_Gauss);

% Resultado fornecido: não apresenta resposta parcial

% Probabilidade de estar no espaço dado
P1 = f(integral_NC2); R1 = 1 - P1;
P2 = f(integral_GL);  R2 = 1 - P2;

fprintf('\n    - P1 = %.10f', P1);
fprintf('\n    - P2 = %.10f\n', P2);

fprintf('\n    Probabilidade de vir diferente: ');
fprintf('\n    - Newton-Cotes = %.2f', R1);
fprintf('\n    - Gauss-Legendre = %.2f\n', R2);

% Resultado fornecido: 0,09