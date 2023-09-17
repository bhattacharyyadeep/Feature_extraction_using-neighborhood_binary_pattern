r = [5 10 15 20 25];
recall_lbp = [17.72 33.33 47.51 59.95 69.99];
recall_lndp = [18.17 34.43 49.05 61.95 72.31];
recall_combine = [18.56 35.51 50.80 64.55 76.05];

plot(r, recall_lbp, '-bo', 'LineWidth', 1.3);
hold on;
plot(r, recall_lndp, '-ro', 'LineWidth', 1.3);
plot(r, recall_combine, '-mo', 'LineWidth', 1.3);

xlabel('Top Matches');
ylabel('Recall (in %)');
legend('LBP', 'LNDP', 'LBP+LNDP');
