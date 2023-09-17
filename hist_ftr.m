function LBP_ftr=hist_ftr()
LBP_ftr=zeros(size(10000,256));
for i=1:10000
    t=i-1;
    img=imread("D:\MATLAB FILES\Corek-10k\"+t+".jpeg");
    img1=rgb2gray(img);
    [LBPimage,LBP_ftr(i,1:256)]=LBP(img1);
end
end