distance=zeros(size(2800));
%k=1;
precision_sum=0;
precision_sum_avg=0;
recall_sum=0;
recall_avg=0;
recall_sum_avg=0;
n1=input("Enter No. of Top matches = ");
for n=1:112
for m=(((n-1)*25)+1):(25*n)
    a=imread("C:\Users\deeps\Documents\BTECH\Mini_project_6th_sem\Brodatz_database\"+m+".tif");%taking in query Image
    distance=Distance_features(a)+Distance_features_LNDP(a);
    srt_distance = sort(distance); % sorting the distances
    t=0;
    for i=1:n1 % getting the top 25 distance of the query image using minimum distances.
    for j=1:numel(distance)
        if srt_distance(i)==distance(j)
            
            if j>=(((n-1)*25)+1) && j<=(25*n)
                t=t+1;  
            end
            
            break;
        end
    end
    end
    precision_sum=precision_sum+(t/n1); % calculating precision over each category here we have 112 categories.
    recall_sum=recall_sum+(t/25);
    t=0;
end
precision_avg=(precision_sum)/25;
precision_sum=0;
recall_avg=(recall_sum)/25;
recall_sum=0;
recall_sum_avg=recall_sum_avg+recall_avg;
precision_sum_avg=precision_sum_avg+precision_avg;
display("Precision of category "+n+" = "+precision_avg*100);
end
precision_db=(precision_sum_avg)/112;
recall_db=(recall_sum_avg)/112;
display("Precision of LNDP+LBP = "+precision_db*100); % ultimately displaying the over all ARP of the database.
display("Recall of LNDP+LBP = "+recall_db*100);%ARR;
