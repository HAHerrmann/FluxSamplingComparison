function p = plottingOutput(gRlist,gDev,num,modelname,algo)
    rmin = min(min(gRlist));
    rmax = max(max(gRlist));
    figure(1)
    % Gelman-Rubin PRSF plot
    subplot(2,1,1);
    x = 100:100:num;
    h = plot([1, num], [1, 1], '--', [1, num], [1, 1] , '--', 'color', 'r');
    set(h,'LineWidth',1);
    hold on
    h = plot(x,gRlist, 'k');
    set(h,'LineWidth',1.5);
    ylim([rmin, rmax]);
    xlabel('Number of samples');
    ylabel('PRSF value');
    hold on
    title(strcat('Gelman-Rubin Diagnostic:',{' '},modelname,{' '},algo));
    hold off
    % XY deviation
    k2e = num;
    data = gDev;
    figure(1)
    subplot(2,1,2);
    h = plot(1:1000:k2e, data(:,1), 'c');
    set(h,'LineWidth',4);
    hold on
    h = plot(1:1000:k2e, data(:,2), 'b');
    set(h,'LineWidth',1.5);
    hold on
    h = plot(1:1000:k2e, data(:,3), 'g');
    set(h,'LineWidth',1.5);
    hold on
    xlabel('Number of samples')
    ylabel('xy-deviation (%)')
    title('XY-deviation');
    devMax = max(max(gDev));
    ylim([0, devMax+1])
    xlim([0,num-1000])
    filename = char(strcat(modelname,'_',algo,'.png'));
    saveas(gcf,filename);
    close(gcf);
end