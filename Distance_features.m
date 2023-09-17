
function dist=Distance_features(query)
[lbp_pattern,feature_query]=LBP(query);

filename='LBP_feature.txt';
feature_db=csvread(filename);
feature_db=feature_db/20;
feature_query=feature_query/20;
sum=0;
for i=1:10000
    for m=1:numel(feature_db(i,:))
        sum=sum+abs((feature_db(i,m)-feature_query(m))/(1+feature_db(i,m)+feature_query(m)));
    end
    dist(i)=sum;
    sum=0;
end