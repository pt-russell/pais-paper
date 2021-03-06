function createfigure(X1, YMatrix1)
%CREATEFIGURE1(X1, YMATRIX1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 10-Jan-2019 12:15:01

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YMinorTick','on','YScale','log',...
    'YTick',[1e-07 1e-05 0.001 0.1 10],...
    'XMinorTick','on',...
    'XScale','log',...
    'FontSize',17);
%% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 500]);
%% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[1e-07 10]);
box(axes1,'on');
hold(axes1,'on');

% Create multiple lines using matrix input to loglog
loglog1 = loglog(X1,YMatrix1,'LineWidth',2,'Parent',axes1);
set(loglog1(1),'DisplayName','ETPF');
set(loglog1(2),'DisplayName','MT','LineStyle','--');
set(loglog1(3),'DisplayName','Bootstrap','LineStyle','-.','Color',[0 0.4 0]);

% Create xlabel
xlabel('Ensemble size','FontSize',18.7,'Interpreter','latex');

% Create ylabel
ylabel('Time in seconds','FontSize',18.7,'Interpreter','latex');

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','northwest');

