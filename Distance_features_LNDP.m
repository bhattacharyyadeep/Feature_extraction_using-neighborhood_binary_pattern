function dist=Distance_features_LNDP(query)
[lndp_pattern,feature_query]=LNDP(query);
dist=zeros(size(2800));
filename='LNDP_feature.txt';
feature_db=csvread(filename);
sum=0;
for i=1:2800
    for m=1:numel(feature_db(i,:))
        sum=sum+abs((feature_db(i,m)-feature_query(m))/(1+feature_db(i,m)+feature_query(m)));
    end
    dist(i)=sum;
    sum=0;
end