function LNDP_ftr=hist_ftr_LNDP()
LNDP_ftr=zeros(size(10000,256));
for i=1:10000
    t=i-1;
    img=imread("D:\MATLAB FILES\Corek-10k\"+t+".jpeg");
    img1=rgb2gray(img);
    [LNDPimage,LNDP_ftr(i,1:256)]=LNDP(img1);
end
end
