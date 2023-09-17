
function [LBPImage,Histogram]=LBP(Image)
 LBPImage=zeros(size(Image), 'uint8');
 [rows, columns] = size(Image);
 for row = 2 : rows - 1   
	for col = 2 : columns - 1    
		centerPixel = Image(row, col);
		pixel7=Image(row-1, col-1) >= centerPixel;  
		pixel6=Image(row-1, col) >= centerPixel;   
		pixel5=Image(row-1, col+1) >= centerPixel;  
		pixel4=Image(row, col+1) >= centerPixel;     
		pixel3=Image(row+1, col+1) >= centerPixel;    
		pixel2=Image(row+1, col) >= centerPixel;      
		pixel1=Image(row+1, col-1) >= centerPixel;     
		pixel0=Image(row, col-1) >= centerPixel;    
		eightBitNumber = uint8(...
			pixel7 * 2^7 + pixel6 * 2^6 + ...
			pixel5 * 2^5 + pixel4 * 2^4 + ...
			pixel3 * 2^3 + pixel2 * 2^2 + ...
			pixel1 * 2 + pixel0);
		LBPImage(row, col) = eightBitNumber;
	end  
 end
Histogram=hist(LBPImage(:),0:255);
end