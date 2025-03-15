function [] = exibe_parametros(string, p, b)
    fprintf("\n   %s\n", string)
    for i = 1:p
        fprintf("   b(%d) = %f\n", i-1, b(i))
    end
end