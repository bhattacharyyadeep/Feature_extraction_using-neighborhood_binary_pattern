function pixel=Pixel_Function(k1,k2,n)
if k1^n>=0 && k2^n>=0
    pixel=1;
elseif k1^n<0 && k2^n<0
    pixel=1;
elseif k1^n>=0 && k2^n<0
    pixel=0;
elseif k1^n<0 && k2^n>=0
    pixel=0;

end