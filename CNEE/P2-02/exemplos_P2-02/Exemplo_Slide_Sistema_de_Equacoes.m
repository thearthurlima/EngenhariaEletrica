syms x y                  % Definindo variáveis simbólicas
simbolos = [x y];         % Vetor das variáveis

f = [x^10+y^10-1024;
     exp(x)-exp(y)-1];    % Vetor das funções linearizadas

x0 = [0.1; -2];           % Ponto inicial
Toler = 10^-2;            % Tolerância
IterMax = 100;            % Iteração máxima

[x, Iter] = newton_rhapson_ordem_2(f, simbolos, x0, Toler, IterMax)