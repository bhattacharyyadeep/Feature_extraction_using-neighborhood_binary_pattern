distance=zeros(size(2800));
%k=1;
precision_sum=0;
precision_sum_avg=0;
for n=1:112
for m=(((n-1)*25)+1):(25*n)
    a=imread("C:\Users\deeps\Documents\BTECH\Mini_project_6th_sem\Brodatz_database\"+m+".tif");%taking in query Image
    [lbp_pattern,feature_query]=LBP(a);%using LBP function extracting query image features.
dist=zeros(size(2800));
filename='LBP_feature.txt';% all images feature vector stored in LBP.txt
feature_db=csvread(filename);
sum=0;
for i=1:2800 % calculating distance between query image and each image in the database
    for m1=1:numel(feature_db(i,:))
        sum=sum+abs((feature_db(i,m1)-feature_query(m1))./(1+feature_db(i,m1)+feature_query(m1)));
    end
    dist(i)=sum;
    sum=0;
end
distance=dist;
    srt_distance = sort(distance); % sorting the distances
    t=0;
    for i=1:25 % getting the top 25 distance of the query image using minimum distances.
    for j=1:numel(distance)
        if srt_distance(i)==distance(j)
            
            if j>=(((n-1)*25)+1) && j<=(25*n)
                t=t+1;  
            end
            
            break;
        end
    end
    end
    precision_sum=precision_sum+(t/25); % calculating precision over each category here we have 112 categories.
    t=0;
end
precision_avg=(precision_sum)/25;
precision_sum=0;
precision_sum_avg=precision_sum_avg+precision_avg;
display("Precision of category "+n+" = "+precision_avg*100);
end
precision_db=(precision_sum_avg)/112;
display("Precision of LBP = "+precision_db); % ultimately displaying the over all ARP of the database.
