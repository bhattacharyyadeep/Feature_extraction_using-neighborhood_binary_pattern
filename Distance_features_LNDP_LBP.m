function dist=Distance_features_LNDP_LBP(query)
dist=zeros(size(2800));
filename='Combined_feature.txt';
ftr_LNDP_LBP_db=csvread(filename);
[lbp_pattern,feature_query_lbp]=LBP(query);
[lndp_pattern,feature_query_lndp]=LNDP(query);
feature_combined_query=zeros(size(512));
feature_combined_query(1:256)=feature_query_lbp;
feature_combined_query(257:512)=feature_query_lndp;
for i=1:2800
    sum=0;
    for m=1:numel(ftr_LNDP_LBP_db(i,:))
        sum=sum+abs((ftr_LNDP_LBP_db(i,m)-feature_combined_query(m))./(1+ftr_LNDP_LBP_db(i,m)+feature_combined_query(m)));
    end
    dist(i)=sum;
end

end
