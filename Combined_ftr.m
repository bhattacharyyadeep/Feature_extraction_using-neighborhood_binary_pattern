function combined_feature=Combined_ftr()
filename='LBP_feature.txt';
filename1='LNDP_feature.txt';
feature_LBP=csvread(filename);
feature_LNDP=csvread(filename1);
combined_feature=horzcat(feature_LBP,feature_LNDP);
end