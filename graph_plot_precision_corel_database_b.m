r = [10 20 30 40 50 60 70 80 90 100];
precision_lbp = [37.23 29.17 25.04 22.39 20.19 18.72 17.59 16.81 15.82 14.97];
precision_lndp = [38.06 29.61 25.25 22.81 20.43 19.01 17.84 17.07 16.07 15.21];
precision_combine = [42.81 34.09 28.43 25.79 23.37 21.22 20.17 19.04 17.82 17.01];

plot(r, precision_lbp, '-bo', 'LineWidth', 1.3);
hold on;
plot(r, precision_lndp, '-ro', 'LineWidth', 1.3);
plot(r, precision_combine, '-mo', 'LineWidth', 1.3);

xlabel('Number of Top Matches');
ylabel('Precision (in %)');
legend('LBP', 'LNDP', 'LBP+LNDP');
