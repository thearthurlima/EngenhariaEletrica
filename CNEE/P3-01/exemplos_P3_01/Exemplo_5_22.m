n =  5;

[A, T, CondErro] = pes_abs_GL(n);

R1 = array2table([A' T']);
R1.Properties.VariableNames = {'A', 'T'};
disp(R1)

fprintf('    CondErro = %d', CondErro)  