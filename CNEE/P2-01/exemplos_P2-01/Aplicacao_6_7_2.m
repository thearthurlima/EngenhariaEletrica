% L 2*alpha*sinh(d/2*alpha);

g = @(x) x.*(cosh(25./x)-1)-2; 
my_graph_plot(g, 140, 160, 0.1, 'x*(cosh(d/2*x) - 1) - f', 'x', 'g(x)')

[alpha, ~, ~] = pegaso(g, 140, 160, 1e-05, 100);
fprintf("Valor de α encontrado = %f", alpha);
L = 2*alpha*sinh(50/(2*alpha));
fprintf("\n\nComprimento encontrado = %f", L);


