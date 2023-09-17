r=[5 10 15 20 25];
precision_lbp=[88.62 83.33 79.18 74.94 69.99];
precision_lndp=[90.87 86.09 81.74 77.44 72.31];
precision_combine=[92.81 88.76 84.67 80.69 76.05];
plot(r,precision_lbp,'-bo',r,precision_lndp,'-ro',r,precision_combine,'-mo');
xlabel('Number of Top Matches ');
ylabel('Precision (in %)');
title('Precision comparision of LBP , LNDP and LBP+LNDP Brodatz database');
legend('LBP','LNDP','LBP+LNDP');