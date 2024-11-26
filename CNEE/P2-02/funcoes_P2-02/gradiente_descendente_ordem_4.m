function [x, Iter] = gradiente_descendente_ordem_4(g, simbolos, x0, Toler, IterMax)
    % Inicializa variáveis
    x = x0;
    Iter = 1;
    
    % Converte a função simbólica para função anônima
    g_func = matlabFunction(g, 'Vars', simbolos);
    grad_g = gradient(g, simbolos);
    grad_g_func = matlabFunction(grad_g, 'Vars', simbolos);
    
    % Itera até convergência ou até o número máximo de iterações
    while Iter <= IterMax

        % 3º passo:
        g1 = g_func(x(1), x(2), x(3), x(4));
        z = grad_g_func(x(1), x(2), x(3), x(4));
        z0 = norm(z,2);

        % 4º passo:
        if z0 == 0
            % disp('Gradiente 0')
            % disp(x)
            % disp('Pode ser que seja mínimo')
            break;
        end

        % 5º passo:
        z = z/z0;                      % Torna z um vetor unitário
        alpha1 = 0;
        alpha3 = 1;
        xt = x - alpha3*z;
        g3 = g_func(xt(1), xt(2), xt(3), xt(4));

        % 6º passo:
        while g3 >= g1 % Faz passos 7 e 8
            % 7º passo:
            alpha3 = alpha3/2;
            g3 = g_func(xt(1), xt(2), xt(3), xt(4));

            % 8º passo:
            if alpha3 < Toler/2
                % disp('Sem melhoria provável')
                % disp(x)
                % disp('Pode ser que seja mínimo')
                break
            end
        end

        % 9º passo:
        alpha2 = alpha3/2;
        xt = x - alpha2*z;
        g2 = g_func(xt(1), xt(2), xt(3), xt(4));

        % 10º passo:
        h1 = (g2-g1)/alpha2;
        h2 = (g3-g2)/(alpha3-alpha2);
        h3 = (h2-h1)/alpha3;

        % Nota: A diferença dividida de Newton é usada para encontrar
        % a quadrática P(a) = g1 + h1*a + h3*a*(a - a2) que interpola
        % h(a) em a = 0, a = a2, a = a3.
        
        % 11º passo:
        alpha0 = 0.5*(alpha2-h1/h3);   % O ponto crítico de P ocorre em alpha0
        xt = x - alpha0*z;
        g0 = g_func(xt(1), xt(2), xt(3), xt(4));

        % 12º passo:
        alpha = alpha0;
        if g0 > g3
            alpha = g3;
        end

        % 13º passo:
        x = x - alpha*z;

        % 14º passo:                 % Procedimento bem sucedido
        if abs(g_func(x(1), x(2), x(3), x(4)) - g1) < Toler
            % disp(x)
            break
        end

        % 15º passo:
        Iter = Iter + 1;
    end
    % 16º passo:                     % Procedimento mal sucedido
    if(Iter > IterMax)
        % disp('Número máximo de iterações excedido')
    end
end