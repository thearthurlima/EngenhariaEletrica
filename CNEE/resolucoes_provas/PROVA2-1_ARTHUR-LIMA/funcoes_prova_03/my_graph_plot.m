function [] = my_graph_plot(f, a, b, h, title_str, xlabel_str, ylabel_str)
    figure;
    x = a:h:b;
    y = f(x);
    plot(x, y);
    title(title_str);
    xlabel(xlabel_str);
    ylabel(ylabel_str);
    grid on;
end