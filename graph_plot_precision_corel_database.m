r=[10 20 30 40 50 60 70 80 90 100];
precision_lbp=[37.23 29.17 25.04 22.39 20.19 18.72 17.59 16.81 15.82 14.97];
precision_lndp=[38.06 29.61 25.25 22.81 20.43 19.01 17.84 17.07 16.07 15.21];
precision_combine=[42.81 34.09 28.43 25.79 23.37 21.22 20.17 19.04 17.82 17.01];
plot(r,precision_lbp,'-bo',r,precision_lndp,'-ro',r,precision_combine,'-mo');
xlabel('Number of Top Matches ');
ylabel('Precision (in %)');
title('Precision comparision of LBP , LNDP and LBP+LNDP Corel-10k Database');
legend('LBP','LNDP','LBP+LNDP');