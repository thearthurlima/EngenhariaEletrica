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

my_graph_plot(f, L(3), L(2), 0.01, "Raízes reais de f no intervalo inicial", "x", "f(x)")
my_graph_plot(f, -6, 6, 0.01, "Raízes reais de f no novo intervalo", "x", "f(x)")

fprintf("\n--- (Letra d) --------------------------------\n\n")

Toler = 10^-5; IterMax = 100;

fprintf("Com base no gráfico da Figura 2, vamos procurar um intervalo\n");
fprintf("ainda menor em que pode haver uma raiz real.\n\n");

z = -6; [a, b, condErro] = troca_sinal(f, z);
R = array2table([a, b, condErro]);
R.Properties.VariableNames = {'a', 'b', 'Erro'};
disp(R);

fprintf("Utilizando o ponto z = -6 para achar um intervalo em que haja\n");
fprintf("troca de sinal, percebemos que ela não ocorre, o que nos leva\n");
fprintf("a acreditar que não hajam raízes reais.\n");

fprintf("\n--- (Letra e) --------------------------------\n\n")

x0 = 1+1i;
[Raiz, Iter, condErro] = newton(f, df, x0, Toler, IterMax);
R = array2table([Raiz, Iter, condErro]);
R.Properties.VariableNames = {'Raiz', 'Iter', 'Erro'};
disp(R);

fprintf("Utilizando o método de Newton e buscando uma raiz próxima de\n");
fprintf("1+1i, encontramos uma raiz complexa. Como as raízes complexas\n");
fprintf("sempre aparecem em pares, o seu par será o seu conjugado,\n");
fprintf("portanto, um par de raízes complexas é\n");
fprintf("\t- x = 1+0.7i\n")
fprintf("\t- x = 1-0.7i\n")

fprintf("\n--- 2ª questão -------------------------------")

d = 500;
f2 = @(C) C * (cosh(500/2*C) -1);
df2 = @(C) cosh(250*C) + 250*C*sinh(250*C) - 1;

x0 = 630;

[Raiz, Iter, condErro] = newton(f2, df2, x0, Toler, IterMax);
R = array2table([Raiz, Iter, condErro]);
R.Properties.VariableNames = {'Raiz', 'Iter', 'Erro'};
disp(R);