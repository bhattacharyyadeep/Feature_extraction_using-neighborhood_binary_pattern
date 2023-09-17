distance = zeros(10000, 1);
precision_sum_avg = 0;
recall_sum_avg = 0;

n1 = input("No. of Top Matches = ");

parfor n = 1:100
    precision_sum = 0;
    recall_sum = 0;
    
    for m = (((n - 1) * 100) + 1):(100 * n)
        t1 = m - 1;
        a = rgb2gray(imread("Corek-10k\" + t1 + ".jpeg"));
        distance = Distance_features(a);
        [~, sortedIndices] = sort(distance);
        matchingIndices = sortedIndices(1:n1);
        
        t = nnz(matchingIndices >= ((n - 1) * 100) + 1 & matchingIndices <= (100 * n));
        
        precision_sum = precision_sum + (t / n1);
        recall_sum = recall_sum + (t / 100);
    end
    
    precision_avg = precision_sum / 100;
    recall_avg = recall_sum / 100;
    
    precision_sum_avg = precision_sum_avg + precision_avg;
    recall_sum_avg = recall_sum_avg + recall_avg;
    
    display("Precision of category %d = %.2f%%\n", n, precision_avg * 100);
end

precision_db = precision_sum_avg / 100;
recall_db = recall_sum_avg / 100;

display("Precision of LBP = %.2f%%\n", precision_db * 100);
display("Recall of LNDP+LBP = %.2f%%\n", recall_db * 100);
