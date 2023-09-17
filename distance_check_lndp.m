a=rgb2gray(imread("Corek-10k\110.jpeg"));
distance=Distance_features_LNDP(a);
srt_distance = sort(distance);
k=1;
t=0;
n=input("Enter no of images LNDP : ");
for i=1:n
    for j=1:numel(distance)
        if srt_distance(i)==distance(j)
            img=imread("Corek-10k\"+j+".jpeg");
            subplot(5,5,k);
            disp("image"+j);
            k=k+1;
            if j>=101 && j<=125
                t=t+1;
            end
            imshow(img);
            break;
        end
    end
end
precision=t/n;
disp("Precision of LNDP = "+precision*100+" %");
