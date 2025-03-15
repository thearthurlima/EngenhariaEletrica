function edo_scatter_comparative_plot(f_solucao_exata, a, b, h, VetX, VetY, title_str, xlabel_str, ylabel_str)
    x = a:h:b;
    y = f_solucao_exata(x);

    scatter(VetX, VetY, 20, "blue");
    hold on;
    plot(x, y, 'magenta')

    % Adicionar legendas e título
    legend('Solução pelo método numérico', 'Solução exata');
    title(title_str);
    xlabel(xlabel_str);
    ylabel(ylabel_str);

    grid on;
    hold off;
end