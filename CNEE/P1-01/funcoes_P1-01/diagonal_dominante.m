function [eh_dominante, pode_ser_dominante, matriz_pivot] = diagonal_dominante(matriz)
    n = length(matriz);
    pivot = zeros(1, n);
    matriz_pivot = zeros(n);

    eh_dominante = true;
    pode_ser_dominante = true;
    
    % Verifica se a matriz A é diagonal dominante
    for i = 1:n
        soma = sum(abs(matriz(i, :))) - abs(matriz(i, i));
        if abs(matriz(i, i)) <= soma
            eh_dominante = false;
            break;
        end
    end

    % Se não for diagonal dominante, tenta torná-la
    if eh_dominante == false
        for i = 1:n
            [~, index_maximo_coluna] = max(matriz(:, i));
            pivot(i) = index_maximo_coluna;
        end

        % Se houver duplicatas, não pode ser diagonal dominante
        % Retorna a matriz identidade para evitar erros
        if length(unique(pivot)) ~= n
            pode_ser_dominante = false;
            matriz_pivot = eye(n); 
        else
            % Troca de linhas a partir do vetor pivot
            matriz_I = eye(n);
            for i = 1:n
                matriz_pivot(i, :) = matriz_I(pivot(i), :);
            end
        end
    else
        % Se já for diagonal dominante, retorna a matriz identidade
        matriz_pivot = eye(n);
    end
end
