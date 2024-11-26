function [] = my_graph_plot(f, a, b, h, title_str, xlabel_str, ylabel_str)
    figure;
    x = a:h:b;
    y = f(x);
    
    % Plot the main function
    plot(x, y);
    hold on; % Keep the current plot
    
    % Calculate the current y-axis limits
    yLimits = ylim;
    
    % Center the y-axis around the 0 line
    yCenter = 0; % The value of the horizontal line
    yMargin = 0.1 * (max(yLimits) - min(yLimits)); % Add some margin around the limits
    ylim([min(y) - yMargin, max(y) + yMargin]);
    
    % Add a horizontal line at y = 0
    yline(yCenter, '--m', 'LineWidth', 1.5);
    
    hold off; % Release the plot hold
    
    % Set the title and labels
    title(title_str);
    xlabel(xlabel_str);
    ylabel(ylabel_str);
    grid on;
end
