function [x, Iter] = newton_rhapson_ordem_2(f, simbolos, x0, Toler, IterMax)

    % Converte função simbólica para função anônima
    f_func = matlabFunction(f, 'Vars', simbolos);
    % Calcula matriz Jacobiana
    J = jacobian(f, simbolos);
    J_func = matlabFunction(J, 'Vars', simbolos);
    x = x0; Iter = 0;

    while 1
        % Avalia a função vetorial no ponto (x,y)
        F = f_func(x(1),x(2));
        F_negativa = -F;
    
        % Avalia a matriz Jacobiana no ponto (x,y)
        J = J_func(x(1),x(2));
    
        [J_LU, ~, pivot] = decomp_LU(J);
        y = subst_sucessivas_pivotal(J_LU, F_negativa, pivot);
        vet_dx_dy = subst_retroativas(J_LU, y);

        % format default
        % disp([vet_dx_dy(1); vet_dx_dy(2)])
        
        x = x + vet_dx_dy';

        Iter = Iter + 1;
        if norm(vet_dx_dy, inf) <= Toler || Iter > IterMax
            break
        end
    end
end