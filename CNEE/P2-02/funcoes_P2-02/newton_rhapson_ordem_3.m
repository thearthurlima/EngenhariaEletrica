function [x, Iter] = newton_rhapson_ordem_3(f, simbolos, x0, Toler, IterMax)

    % Converte função simbólica para função anônima
    f_func = matlabFunction(f, 'Vars', simbolos);
    % Calcula matriz Jacobiana
    J = jacobian(f, simbolos);
    J_func = matlabFunction(J, 'Vars', simbolos);
    x = x0; Iter = 0;

    while 1
        % Avalia a função vetorial no ponto (x,y,z)
        F = f_func(x(1),x(2),x(3));
        F_negativa = -F;
    
        % Avalia a matriz Jacobiana no ponto (x,y,z)
        J = J_func(x(1),x(2),x(3));
    
        [J_LU, ~, pivot] = decomp_LU(J);
        y = subst_sucessivas_pivotal(J_LU, F_negativa, pivot);
        vet_dx_dy_dz = subst_retroativas(J_LU, y);

        % format default
        % disp([vet_dx_dy_dz(1); vet_dx_dy_dz(2); vet_dx_dy_dz(3)])
        
        x = x + vet_dx_dy_dz';

        Iter = Iter + 1;
        if norm(vet_dx_dy_dz, inf) <= Toler || Iter > IterMax
            break
        end
    end
end