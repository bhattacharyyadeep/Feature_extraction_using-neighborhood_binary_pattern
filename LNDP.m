function [LNDPImage,Histogram]=LNDP(Image)
 LNDPImage=zeros(size(Image), 'uint8');
 [rows, columns] = size(Image);
 grayImage=Image;
 n=1;
 for row = 2 : rows - 1   
	for col = 2 : columns - 1   
        k1=grayImage(row-1, col+1)>=grayImage(row, col+1);
        k2=grayImage(row+1, col+1)>=grayImage(row, col+1);
        pixel1=k1==k2;
        
        k3=grayImage(row,col+1)>=grayImage(row+1,col+1);
        k4=grayImage(row+1,col)>=grayImage(row+1,col+1);
        pixel2=k3==k4;
        
        k5=grayImage(row+1,col+1)>=grayImage(row+1,col);
        k6=grayImage(row+1,col-1)>=grayImage(row+1,col);
        pixel3=k5==k6;
        
        k7=grayImage(row+1,col)>=grayImage(row+1,col-1);
        k8=grayImage(row,col-1)>=grayImage(row+1,col-1);
        pixel4=k7==k8;
        
        k9=grayImage(row+1,col-1)>=grayImage(row,col-1);
        k10=grayImage(row-1,col-1)>=grayImage(row,col-1);
        pixel5=k9==k10;
        
        k11=grayImage(row,col-1)>=grayImage(row-1,col-1);
        k12=grayImage(row-1,col)>=grayImage(row-1,col-1);
        pixel6=k11==k12;
        
        k13=grayImage(row-1,col-1)>=grayImage(row-1,col);
        k14=grayImage(row-1,col+1)>=grayImage(row-1,col);
        pixel7=k13==k14;
        
        k15=grayImage(row-1,col)>=grayImage(row-1,col+1);
        k16=grayImage(row,col+1)>=grayImage(row-1,col+1);
        pixel8=k15==k16;
        
        eightBitNumber2=uint8(...
			pixel8 * 2^7 + pixel7 * 2^6 + ...
			pixel6 * 2^5 + pixel5 * 2^4 + ...
			pixel4 * 2^3 + pixel3 * 2^2 + ...
			pixel2 * 2 + pixel1);
        LNDPImage(row, col) = eightBitNumber2;
        n=1;
	end  
end
Histogram=hist(LNDPImage(:),0:255);
end