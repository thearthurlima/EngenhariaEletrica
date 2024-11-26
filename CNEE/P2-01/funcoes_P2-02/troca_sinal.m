% z = ponto a partirr do qual o intervalo será gerado
% a = limite inferior do intervalo
% b = limite superior do intervalo

% f = função anônima que deve ser criada na main, da seguinte forma:
% 'f = @(x) expressao'
% Por exemplo, para 'f(x) = x^2 + 3', deve-se escrever
% 'f = @(x) x^2 + 3'

function [a, b, condErro] = troca_sinal(f, z)
% Achar um intervalo [a, b] onde uma função troca de sinal
    if z == 0
        a = -0.05; b = 0.05;
    else
        a = 0.95 * z; b = 1.05 * z;
    end
    Iter = 0; Aureo = 2/(sqrt(5)-1);
    Fa = f(a); % Avaliar a função em a
    Fb = f(b); % Avaliar a função em b
    % disp([Iter a b Fa Fb]); % Exibe resultados parciais
    
    while 1
        if (Fa*Fb <= 0) || (Iter >= 20)
            break
        end
        Iter = Iter + 1;
        if abs(Fa) < abs(Fb)
            a = a - Aureo * (b - a);
            Fa = f(a); % Avaliar a função em a
        else
            b = b + Aureo * (b - a);
            Fb = f(b); % Avaliar a função em b
        end
        % disp([Iter a b Fa Fb]); % Exibe resultados parciais
    end
    if Fa*Fb <= 0
        condErro = 0;
    else
        condErro = 1;
    end
end