clc; close all;

fprintf("\n\tCálculo Numérico - Prova 2.1 (2024.1)\n")
fprintf("\tDiscente: Arthur Lima dos Santos\n")
fprintf("\t**************************************\n\n")

format default
syms x

% Declaração da função f(x)
f = @(x) x.^6 -1.95*x.^5-37.9925*x.^4+77.849375*x.^3+331.033275*x.^2-776.94118625*x+577.7220955;
df = @(x) 6*x.^5 - (39*x.^4)/4 - (15197*x.^3)/100 + (16434488261298093*x.^2)/70368744177664 + (1455899740173081*x)/2199023255552 - 6834046947039631/8796093022208;
d2f = @(x) 30*x^4 - 39*x^3 - (45591*x^2)/100 + (16434488261298093*x)/35184372088832 + 1455899740173081/2199023255552;

% Coeficientes
c = [1 -1.95 -37.9925 77.849375 331.033275 -776.94118625 577.7220955];

fprintf("\n--- 1ª questão -------------------------------")
fprintf("\n--- (Letra a) --------------------------------\n\n")

[max_positivas, max_negativas] = regra_sinais_descartes(6, c);

fprintf("Observando a sequência de coeficientes e analisando a variação e\n");
fprintf("permanências de sinal, extraimos que, se houverem raízes reais:\n");
fprintf("\t- O número de raízes reais positivas é %d, ou 2, ou 0\n", max_positivas);
fprintf("\t- O número de raízes reais negativas é %d ou 0\n", max_negativas);

fprintf("\n--- (Letra b) --------------------------------\n\n")

[L] = limites_raizes(6, c);
fprintf("\t- Limites das raízes negativas [a, b] = [%g, %g]\n", L(3), L(4));
fprintf("\t- Limites das raízes positivas [c, d] = [%g, %g]\n", L(1), L(2));

fprintf("\n--- (Letra c) --------------------------------\n\n")

fprintf("Partindo do intervalo inicial encontrado [a, b] = [%g, %g]\n", L(3), L(2));
fprintf("que contém todas as raízes reais (Figura 1), conseguimos isolar as\n");
fprintf("raízes no intervalo [a, b] = [-6, 6] (Figura 2)\n");

C = [-4.5 -4.4;
     4.38 4.43;
     4.43 4.47];

% my_graph_plot(f, L(3), L(2), 0.01, "Raízes reais de f no intervalo inicial", "x", "f(x)")
my_graph_plot(f, -6, 6, 0.01, "Todas as raízes reais isoladas graficamente", "x", "f(x)")
my_graph_plot(f, C(1,1), C(1,2), 0.001, "ξ1 isolada graficamente", "x", "f(x)")
my_graph_plot(f, C(2,1), C(2,2), 0.001, "ξ2 isolada graficamente", "x", "f(x)")
my_graph_plot(f, C(3,1), C(3,2), 0.001, "ξ3 isolada graficamente", "x", "f(x)")

fprintf("\n--- (Letra d) --------------------------------\n\n")

Toler = 10^-5; IterMax = 100;

C = [-4.5 -4.4;
     4.383 4.424;
     4.43 4.47];

X0 = [-4.45, 4.4, 4.448];

[T1, R1] = raiz_metodos(f, df, C(1,1), C(1,2), 1, X0(1), Toler, IterMax);
[T2, R2] = raiz_metodos(f, df, C(2,1), C(2,2), 1, X0(2), Toler, IterMax);
[T3, R3] = raiz_metodos(f, df, C(3,1), C(3,2), 1, X0(3), Toler, IterMax);

disp(T1)
disp(T2)
disp(T3)

fprintf("\n--- (Letra e) --------------------------------\n\n")

x0 = 1+1i;
[Raiz, Iter, condErro] = newton(f, df, x0, Toler, IterMax);
R = array2table([Raiz, Iter, condErro]);
R.Properties.VariableNames = {'Raiz', 'Iter', 'Erro'};
disp(R);

fprintf("Utilizando o método de Newton e buscando uma raiz próxima de\n");
fprintf("1+1i, encontramos uma raiz complexa. Como as raízes complexas\n");
fprintf("sempre aparecem em pares, o seu par será o seu conjugado,\n");
fprintf("portanto, um par de raízes complexas é\n\n");
fprintf("\t- x = 1+0.7i\n")
fprintf("\t- x = 1-0.7i\n")

fprintf("\n--- 2ª questão -------------------------------\n\n")

% d = 500; f = 50;

f2 = @(C) C.*(cosh(250./C)-1)-50;
my_graph_plot(f2, 632, 634, 0.001, 'Raiz isolada', 'x', 'f(x)')

fprintf("Com base no gráfico podemos perceber que a raiz se encontra\n");
fprintf("no intervalo [a,b] = [630,634]. Usaremos esse intevalo no mé-\n");
fprintf("todo pégaso para encontrar a raiz deste intervalo.\n\n");

[C, Iter, CondErro] = pegaso(f2, 632, 634, 1e-05, 100);

R4 = array2table([C, Iter, condErro]);
R4.Properties.VariableNames = {'C', 'Iter', 'Erro'};
disp(R4);