% a = limite inferior
% b = limite superior
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada
 
function [Raiz, Iter, condErro] = pegaso(f, a, b, Toler, IterMax)
    Fa = f(a); Fb = f(b); % Avaliar a função em a e b
    x = b; Fx = Fb; Iter = 0;
    while 1
        DeltaX = -Fx/(Fb - Fa)*(b - a);
        x = x + DeltaX; Fx = f(x); % Avaliar a função em x
        % disp([Iter a Fa b Fb x Fx DeltaX]); % Exibe resultados parciais
        if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || Iter > IterMax
            break;
        end
        if Fx * Fb < 0
            a = b; Fa = Fb;
        else
            Fa = Fa*Fb/(Fb + Fx);
        end
        b = x; Fb = Fx;
        Iter = Iter + 1;
    end
    Raiz = x;

    % Teste de convergência
    if abs(DeltaX) <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end