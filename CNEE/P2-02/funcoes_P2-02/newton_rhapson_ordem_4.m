function [x, Iter] = newton_rhapson_ordem_4(f, simbolos, x0, Toler, IterMax)

    % Converte função simbólica para função anônima
    f_func = matlabFunction(f, 'Vars', simbolos);
    % Calcula matriz Jacobiana
    J = jacobian(f, simbolos);
    J_func = matlabFunction(J, 'Vars', simbolos);
    x = x0; Iter = 0;

    while 1
        % Avalia a função vetorial no ponto (x,y,z,w)
        F = f_func(x(1),x(2),x(3),x(4));
        F_negativa = -F;
    
        % Avalia a matriz Jacobiana no ponto (x,y,z,w)
        J = J_func(x(1),x(2),x(3),x(4));
    
        [J_LU, ~, pivot] = decomp_LU(J);
        y = subst_sucessivas_pivotal(J_LU, F_negativa, pivot);
        vet_dx_dy_dz_dw = subst_retroativas(J_LU, y);

        % format default
        % disp([vet_dx_dy_dz_dw(1); vet_dx_dy_dz_dw(2); vet_dx_dy_dz_dw(3),vet_dx_dy_dz_dw(4)])
        
        x = x + vet_dx_dy_dz_dw';

        Iter = Iter + 1;
        if norm(vet_dx_dy_dz_dw, inf) <= Toler || Iter > IterMax
            break
        end
    end
end