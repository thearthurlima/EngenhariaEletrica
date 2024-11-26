    % Aplicação de integral simples
    % Cálculo Numérico (Com aplicações) - 2ª Ed.
    % Exemplo de aplicação 5.9

% Declaração das funções
F = @(x) 0.5 + 1/sqrt(2*pi) * x;   % Função da frequência acumulada
h = @(x) exp(-0.5*x^2);            % Função a ser integrada

% Parâmetros de entrada para integração
a = 0;                             % Intervalo inferior de integração
b = 1.8;                           % Intervalo superior de integração
m = 6;                             % Número de pontos

% Integração da função por Newton-Cotes
[integral_NC1, CondErro1] = newton_cotes(h, a, b, 1, m);  % Trapezio
[integral_NC2, CondErro2] = newton_cotes(h, a, b, 2, m);  % 1/3 Simpson
[integral_NC3, CondErro3] = newton_cotes(h, a, b, 3, m);  % 3/8 Simpson
% Integração da função por Gauss-Legendre
[integral_GL, CondErro4] = gauss_legendre(h, a, b, m);

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

% Resultado do livro: 1,6325

% Probabilidade de x <= 5 
F1 = F(integral_NC2);             % F(1.8) por Newton-Cotes
F2 = F(integral_GL);              % F(1.8) por Gauss-Legendre

% Exibição do resultado
fprintf('Resultado final Newton-Cotes = %.10f\n', F1);
fprintf('Resultado final Gauss-Legendre = %.10f\n', F2);

% Resultado do livro: 0,964