r=[10 20 30 40 50 60 70 80 90 100];
recall_lbp=[3.72 5.82 7.50 8.95 10.05 11.23 12.31 13.45 14.22 14.97];
recall_lndp=[3.80 5.92 7.58 9.12 10.20  11.4 12.46 13.66 14.463  15.21];
recall_combine=[4.28 6.82 8.53 10.32 11.69 12.74 14.12 15.23 16.04 17.01];
plot(r,recall_lbp,'-bo',r,recall_lndp,'-ro',r,recall_combine,'-mo');
xlabel('Top Matches ');
ylabel('Recall (in %)');

legend('LBP','LNDP','LBP+LNDP');