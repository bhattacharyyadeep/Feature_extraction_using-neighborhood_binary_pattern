distance=zeros(size(2800));
a=rgb2gray(imread("Corek-10k\101.jpeg"));
distance=Distance_features(a);
srt_distance = sort(distance);
k=1;
t=0;
n=input("Enter no of images retrieved Combined : ");
for i=1:n
    for j=1:numel(distance)
        if srt_distance(i)==distance(j)
            img=imread("Corek-10k\"+j+".jpeg");
            subplot(5,5,k);
            disp("image"+j);
            k=k+1;
            if j>=100 && j<=199
                t=t+1;  
            end
            imshow(img);
            break;
        end
    end
end
