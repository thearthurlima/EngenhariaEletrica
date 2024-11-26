% n = numero_de_pontos
% v = numero_de_variaveis
% p = numero_de_parametros
% x = variaveis_explicativas
% y = variaveis_respostas

% b = coeficiente_de_regressao
% r2 = coeficiente_de_determinacao
% sigma2 = variancia_residual
% condErro = condicao_de_erro

function [b, r2, sigma2, condErro] = regressao_linear_EN(n, v, p, x, y)
    if (v > 1) && (v+1 ~= p)
        condErro = 1;
        return % Abandone
    end
    condErro = 0; vp1 = v+1; pm1 = p-1;
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

    % Equações normais
    for i = 1:p
        for j = 1:p
            soma = 0;
            for k = 1:n
                soma = soma + x(k,i) * x(k,j);
            end
            Sxx(i,j) = soma; % Matriz dos coeficientes
        end
        soma = 0;
        for k = 1:n
            soma = soma + x(k,i) * y(k);
        end
        Sxy(i) = soma; % Vetor dos termos independentes
    end
    [L, ~, condErro] = cholesky(Sxx); % cholesky(p, Sxx), p é a ordem
    t = subst_sucessivas(L, Sxy);
    for i = 1:p
        for j = 1:i
            U(j,i) = L(i,j); % U = transposta de L
        end
    end
    b = subst_retroativas(U,t); % Coeficientes
    D = 0; Sy2 = 0;
    for i = 1:n
        u = 0;
        for j = 1:p
            u = u + b(j) * x(i,j);
        end
        d = y(i)- u; D = D + power(d,2); Sy2 = Sy2 + power(y(i),2);
    end
    r2 = 1 - D/(Sy2 - power(Sxy(1),2)/n); % Coeficiente de determinação
    sigma2 = D/(n-p); % Variância residual
end

function [L, det, condErro] = cholesky(A)
    n = length(A);
    condErro = 0; det = 1;
    for j = 1:n
        soma = 0;
        for k = 1:j-1
            soma = soma + A(j,k)^2;
        end
        t = A(j,j) - soma;
        if t > 0
            A(j,j) = sqrt(t); r = 1/A(j,j); det = det*t;
        else
            condErro = 1;
            disp("A matriz não é definida positiva")
            return
        end
        for i = j+1:n
            soma = 0;
            for k = 1:j-1
                soma = soma + A(i,k)*A(j,k);
            end
            A(i,j) = (A(i,j) - soma)*r;
        end
    end
    for i = 1:n %Zera toda a parte não inferior da matriz
        for j = i+1:n
            A(i,j) = 0;
        end
    end
    L = A; %Copia a matriz decomposta para L
end