% a = limite inferior
% b = limite superior
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada

function [Raiz, Iter, condErro] = secante(f, a, b, Toler, IterMax)
    Fa = f(a); Fb = f(b); % Avaliar a função em a e b
    if abs(Fa) < abs(Fb)
        t = a; a = b; b = t; t = Fa; Fa = Fb; Fb = t;
    end
    Iter = 0; x = b; Fx = Fb;
    while 1
        DeltaX = -Fb/(Fb-Fa)*(b-a);
        x = x + DeltaX; Fx = f(x); % Avaliar a função em x
        % disp([Iter a Fa b Fb x Fx DeltaX]); % Exibe resultados parciais
        if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || (Iter >= IterMax)
            break
        end
        a = b; Fa = Fb; b = x; Fb = Fx; Iter = Iter+1;
    end
    Raiz = x;
    
    % Teste de convergência
    if abs(DeltaX) <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end