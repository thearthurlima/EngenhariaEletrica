% n = grau do polinômio
% c = coeficientes, onde P(x) = c(1)x^n + c(2)x^(n-1) + ... + c(n+1)
% L = limites inferior e superior das raízes positivas e negativas,
% respectivamente

function [L] = limites_raizes(n, c)
% Achar os limites das raízes reais de uma equação polinomial
    
    L = zeros(1,4); % Prealocando espaço
    
    if c(1) == 0
        disp("A matriz não é definida positiva")
        return % Abandone
    end
    t = n+1; c(t+1) = 0;

    while 1 % Se c(n+1) for nulo, então o polinômio é deflacionado
        if c(t) ~= 0
            break
        end
        t = t-1;
    end

    % Cálculo dos quatro limites das raízes reais
    for i = 1:4
        if (i == 2) || (i == 4)
            for j = 1:t/2
                Aux = c(j); c(j) = c(t-j+1); c(t-j+1) = Aux;
            end
        elseif i == 3
                % Reinversão da ordem e troca de sinais dos coeficientes
                for j = 1:t/2
                    Aux = c(j); c(j) = c(t-j+1); c(t-j+1) = Aux;
                end
                for j = t-1:-2:1
                    c(j) = -c(j);
                end
        end

        % Se c(1) < 0, então é trocado o sinal de todos os coeficientes
        if c(1) < 0
            for j = 1:t
                c(j) = -c(j);
            end
        end
        
        % Cálculo de k, maior índice dos coeficientes negativos
        k = 2;
        flag = 1;
        while flag
            if (c(k) < 0) || (k > t)
                flag = 0;
            end
            k = k+1;
        end

        % Cálculo de B, maior coeficiente negativo em módulo
        if k <= t
            B = 0;
            for j = 2:t
                if (c(j) < 0) && (abs(c(j)) > B)
                    B = abs(c(j));
                end
            end
            % Limite das raízes positivas de P(x) = 0 e das equaçoes aux
            L(i) = 1 + nthroot(B/c(1), k-1);
        else
            L(i) = 10^100; % Infinito
        end
    end
    Aux = L(1); L(1) = 1/L(2); L(2) = Aux; L(3) = -L(3); L(4) = -1/L(4);
end