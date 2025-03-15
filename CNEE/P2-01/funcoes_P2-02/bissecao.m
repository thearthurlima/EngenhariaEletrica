% a = limite inferior
% b = limite superior
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada

function [Raiz, Iter, condErro] = bissecao(f, a, b, Toler, IterMax)
    Fa = f(a); Fb = f(b); % Avaliar a função em a e b
    if Fa*Fb > 0
        disp("Função não muda de sinal nos extremos do intervalo dado")
        return % Abandone
    end
    DeltaX = abs(b-a)/2; Iter = 0;

    while 1
        x = (a+b)/2; Fx = f(x); % Avaliar a função em x
        % disp([Iter a Fa b Fb x Fx DeltaX]); % Exibe resultados parciais
        if (DeltaX <= Toler && abs(Fx) <= Toler) || (Iter >= IterMax)
            break
        end
        if Fa*Fx > 0
            a = x; Fa = Fx;
        else
            b = x;
        end
        DeltaX = DeltaX/2; Iter = Iter+1;
    end
    Raiz = x;

    % Teste de convergência
    if DeltaX <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end