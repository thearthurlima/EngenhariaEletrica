function [T, R] = raiz_metodos(f, df, a, b, m, x0, Toler, IterMax)
    if f(a)*f(b) > 0
        R = zeros(4,3);
        [R(1,1), R(1,2), R(1,3)] = secante(f, a, b, Toler, IterMax);
        [R(2,1), R(2,2), R(2,3)] = muller(f, a, b, Toler, IterMax);
        [R(3,1), R(3,2), R(3,3)] = newton(f, df, x0, Toler, IterMax);
        [R(4,1), R(4,2), R(4,3)] = schroder(f, df, m, x0, Toler, IterMax);

        T = array2table(R);
        T.Properties.VariableNames = {'Raiz', 'Iter', 'Erro'};
        T.Properties.RowNames = {'Secante', 'Muller', 'Newton', 'Schröder'};
    else
        R = zeros(7,3);
        [R(1,1), R(1,2), R(1,3)] = bissecao(f, a, b, Toler, IterMax);
        [R(2,1), R(2,2), R(2,3)] = secante(f, a, b, Toler, IterMax);
        [R(3,1), R(3,2), R(3,3)] = regula_falsi(f, a, b, Toler, IterMax);
        [R(4,1), R(4,2), R(4,3)] = pegaso(f, a, b, Toler, IterMax);
        [R(5,1), R(5,2), R(5,3)] = muller(f, a, b, Toler, IterMax);
        [R(6,1), R(6,2), R(6,3)] = newton(f, df, x0, Toler, IterMax);
        [R(7,1), R(7,2), R(7,3)] = schroder(f, df, m, x0, Toler, IterMax);
                
        T = array2table(R);
        T.Properties.VariableNames = {'Raiz', 'Iter', 'Erro'};
        T.Properties.RowNames = {'Bisseção', 'Secante', 'Regula falsi', 'Pégaso', 'Muller', 'Newton', 'Schröder'};

    end
end