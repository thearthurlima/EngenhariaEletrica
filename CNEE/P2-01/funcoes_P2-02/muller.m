% a = limite inferior
% c = limite superior
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada

 function [Raiz, Iter, condErro] = muller(f, a, c, Toler, IterMax)
    Fa = f(a); Fc = f(c); b = (a + c)/2; Fb = f(b);
    x = b; Fx = Fb; DeltaX = c - a; Iter = 0;
    while 1
        h(1) = c - b; h(2) = b - a; r = h(1)/h(2); t = x;
        A = (Fc - (r + 1) * Fb + r * Fa)/(h(1) * (h(1) + h(2)));
        B = (Fc - Fb)/h(1) - A * h(1);
        C = Fb; z = (-B + sign(B) * sqrt(B^2 - 4 * A * C))/(2 * A);
        x = b + z; DeltaX = x - t; Fx = f(x); % Avaliar a função em x
        % disp([Iter a b c x Fx DeltaX]); % Exibe resultados parciais
        if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
            break
        end
        if x > b
            a = b; Fa = Fb;
        else
            c = b; Fc = Fb;
        end
        b = x; Fb = Fx; Iter = Iter + 1;
    end
    Raiz = x;

    % Teste de convergência
    if abs(DeltaX) <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end