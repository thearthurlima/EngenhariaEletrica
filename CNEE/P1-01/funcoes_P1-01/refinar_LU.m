function [x, interacoes] = refinar_LU(A, b, criterio, precisao)
    [A_decomposta, ~, pivot] = decomp_LU(A);
    interacoes = 0;
    A_decomposta = round(A_decomposta, precisao);

    % Resolvendo o sistema    
    y = subst_sucessivas_pivotal(A_decomposta, b, pivot);
    x = subst_retroativas(A_decomposta, y);

    fprintf("\nx0 =\n\n"); disp(x')

    
    % Refinamento
    flag = true;
    while flag
        r = verificar_exatidao(A, b, x);
        y = subst_sucessivas_pivotal(A_decomposta, r, pivot);
        c = subst_retroativas(A_decomposta, y);
        x = x + c;

        % Exibindo iterações
        fprintf("\nr%d =\n\n", interacoes); disp(r')
        fprintf("\nc%d =\n\n", interacoes); disp(c')
        fprintf("\nx%d =\n\n", interacoes+1); disp(x')

        interacoes = interacoes+1;

        if norm(c, inf) < criterio
            flag = false;
        end
    end
end