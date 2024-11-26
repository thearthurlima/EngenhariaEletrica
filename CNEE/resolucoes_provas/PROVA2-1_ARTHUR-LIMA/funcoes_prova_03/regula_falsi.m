% a = limite inferior
% b = limite superior
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada

function [Raiz, Iter, condErro] = regula_falsi(f, a, b, Toler, IterMax)
    Fa = f(a); Fb = f(b); % Avaliar a função em a e b
    if Fa*Fb > 0
        disp("Função não muda de sinal nos extremos do intervalo dado")
        return % Abandone
    end
    if Fa > 0
        t = a; a = b; b = t; t = Fa; Fa = Fb; Fb = t;
    end
    Iter = 0; x = b; Fx = Fb;
    while 1
        DeltaX = -Fx/(Fb-Fa)*(b-a);
        x = x + DeltaX; Fx = f(x); % Avaliar a função em x
        % disp([Iter a Fa b Fb x Fx DeltaX]); % Exibe resultados parciais
        if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
            break
        end
        if Fx < 0
            a = x; Fa = Fx;
        else
            b = x; Fb = Fx;
        end
        Iter = Iter+1;
    end
    Raiz = x;

    % Teste de convergência
    if abs(DeltaX) <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end