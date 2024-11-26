% F(x) = 0.05*x^3 - 0.4*x^2 + 3 * sin(x) * x

z = 5;

[a, b, condErro] = troca_sinal(z)

% z = ponto a partirr do qual o intervalo será gerado
% a = limite inferior do intervalo
% b = limite superior do intervalo

function [a, b, condErro] = troca_sinal(z)
% Achar um intervalo [a, b] onde uma função troca de sinal
    if z == 0
        a = -0.05; b = 0.05;
    else
        a = 0.95 * z; b = 1.05 * z;
    end
    Iter = 0; Aureo = 2/(sqrt(5)-1);
    Fa = 0.05*a^3 - 0.4*a^2 + 3 * sin(a) * a;
    Fb = 0.05*b^3 - 0.4*b^2 + 3 * sin(b) * b;
    disp([Iter a b Fa Fb]); % Exibe resultados parciais
    
    while 1
        if (Fa*Fb <= 0) || (Iter >= 20)
            break
        end
        Iter = Iter + 1;
        if abs(Fa) < abs(Fb)
            a = a - Aureo * (b - a);
            Fa = 0.05*a^3 - 0.4*a^2 + 3 * sin(a) * a;
        else
            b = b + Aureo * (b - a);
            Fb = 0.05*b^3 - 0.4*b^2 + 3 * sin(b) * b;
        end
        disp([Iter a b Fa Fb]); % Exibe resultados parciais
    end
    if Fa*Fb <= 0
        condErro = 0;
    else
        condErro = 1;
    end
end



x = -20:0.1:20; % Valores de x variando de -10 a 10 com passo de 0.1
y = 0.05 * x.^3 - 0.4 * x.^2 + 3 * sin(x) .* x;

% Plotando o gráfico
plot(x, y);
title('f(x)=0.05*x^3-0.4*x^2+3*sin(x)*x');
xlabel('x');
ylabel('f(x)');
grid on;

x = -4:0.1:12; % Valores de x variando de -10 a 10 com passo de 0.1
y = 0.05 * x.^3 - 0.4 * x.^2 + 3 * sin(x) .* x;

plot(x, y);
title('f(x)=0.05*x^3-0.4*x^2+3*sin(x)*x');
xlabel('x');
ylabel('f(x)');
grid on;