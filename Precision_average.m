distance=zeros(size(10000));
%k=1;
precision_sum=0;
precision_sum_avg=0;
recall_sum=0;
recall_avg=0;
recall_sum_avg=0;
n1=input("No. of Top Matches = ");
for n=1:100
for m=(((n-1)*100)+1):(100*n)
    t1=m-1;
    a=rgb2gray(imread("Corek-10k\"+t1+".jpeg"));
    distance=Distance_features(a);
    srt_distance = sort(distance);
    t=0;
    for i=1:n1
    for j=1:numel(distance)
        if srt_distance(i)==distance(j)
            
            if j>=(((n-1)*100)+1) && j<=(100*n)
                t=t+1;  
            end
            
            break;
        end
    end
    end
    precision_sum=precision_sum+(t/n1);
    recall_sum=recall_sum+(t/100);
    t=0;
end
precision_avg=(precision_sum)/100;
precision_sum=0;
recall_avg=(recall_sum)/100;
recall_sum=0;
recall_sum_avg=recall_sum_avg+recall_avg;
precision_sum_avg=precision_sum_avg+precision_avg;
display("Precision of category "+n+" = "+precision_avg*100);
end
precision_db=(precision_sum_avg)/100;
recall_db=(recall_sum_avg)/100;
display("Precision of LBP = "+precision_db*100);
display("Recall of LNDP+LBP = "+recall_db*100);%ARR;

