% x0 = valor inicial
% Toler = tolerancia
% IterMax = número máximo de iterações
% Raiz = raiz
% Iter = numero de iterações realizadas

% condErro = condição de erro,
% condErro = 0 se a raiz foi encontrada
% condErro = 1 se a raiz não foi encontrada

function [Raiz, Iter, condErro] = newton(f, df, x0, Toler, IterMax)
    Fx = f(x0); DFx = df(x0); x = x0; Iter = 0;
    % disp([Iter x DFx Fx]); % Exibe resultados parciais
    while 1
        DeltaX = -Fx/DFx; x = x + DeltaX;
        Fx = f(x); DFx = df(x); % Avaliar a função e sua derivada em x
        Iter = Iter + 1;
        % disp([Iter x DFx Fx]); % Exibe resultados parciais
        if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || DFx == 0 || Iter >= IterMax
            break
        end
    end
    Raiz = x;

    % Teste de convergência
    if abs(DeltaX) <= Toler && abs(Fx) <= Toler
        condErro = 0;
    else
        condErro = 1;
    end
end