% PES_ABS_GL Calcular pesos e abscissas para a fórmula de Gauss-Legendre
%   
%   Parâmetros de entrada:
%    n = número de pontos
%
%   Parâmetros de saída:
%    A = pesos
%    T = abscissas
%    CondErro = condição de erro, sendo:
%     - CondErro = 0, se não houver erro (n >= 1);
%     - CondErro = 1, se (n < 1);

function [A, T, CondErro] = pes_abs_GL(n)
    if n < 1
        CondErro = 1;
        return
    end
    CondErro = 0; m = fix(0.5*(n + 1));

    for i = 1:m
        z = cos(pi*(i - 0.25)/(n + 0.5));
        while 1
            p1 = 1; p2 = 0;
            for j = 1:n
                p3 = p2; p2 = p1;
                % Polinômio de Legendre no ponto z
                p1 = ((2*j-1)*z*p2 - (j - 1)*p3)/j;
            end
            % Derivada do polinômio de Legendre no ponto z
            pp = n*(z*p1 - p2)/(z^2 - 1); z1 = z;
            % Método de Newton para calcular os zeros do polinômio
            z = z1 - p1/pp;
            if abs(z - z1) < 10^-15
                break
            end
        end
        T(m + 1 - i) = z; % Abscissa
        A(m + 1 - i) = 2/((1 - z^2)*pp^2); % Peso
        % Somente as raízes não negativas são calculadas devido à simetria
    end
end