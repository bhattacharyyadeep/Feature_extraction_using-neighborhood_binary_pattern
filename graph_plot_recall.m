r=[5 10 15 20 25];
recall_lbp=[17.72 33.33 47.51 59.95 69.99];
recall_lndp=[18.17 34.43 49.05 61.95 72.31];
recall_combine=[18.56 35.51 50.80 64.55 76.05];
plot(r,recall_lbp,'-bo',r,recall_lndp,'-ro',r,recall_combine,'-mo');
xlabel('Top Matches ');
ylabel('Recall (in %)');
title('Recall comparision of LBP , LNDP and LBP+LNDP Brodatz Database');
legend('LBP','LNDP','LBP+LNDP');