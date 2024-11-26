% n = numero_de_pontos
% v = numero_de_variaveis
% p = numero_de_parametros
% x = variaveis_explicativas
% y = variaveis_respostas

% b = coeficiente_de_regressao
% r2 = coeficiente_de_determinacao
% sigma2 = variancia_residual
% condErro = condicao_de_erro

function [b, r2, sigma2, condErro] = regressao_linear_DVS(n, v, p, x, y)
    if (v > 1) && (v+1 ~= p)
        condErro = 1;
        return % Abandone
    end
    for i = 1:n % Inclusão de uma colina de 1's relativa à b0
        for j = vp1:-1:2
            x(i,j) = x(i,j-1);
        end
        x(i,1) = 1;
    end
    if (v == 1) && (p > 2) % Se regressão polinomial, então gera potências de x
        for j = 2:pm1
            jp1 = j+1;
            for i = 1:n
                x(i,jp1) = power(x(i,2),j);
            end
        end
    end
end