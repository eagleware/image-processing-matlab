% Topic : Smooothing using Max Filter(3x3 neighbourhood)
% Name : Rupal K
% Class : Msc IT - Part 1

clc;
clear all;

i=imread('F:\MATLAB6p5\work\cameraman_pepper.tif');
subplot(1,2,1);
imshow(i,[]);
title('Image with noise');

s=size(i);
p=zeros(s(1)+2,s(2)+2);

for x=2:s(1)+1
    for y=2:s(2)+1
        p(x,y)=i(x-1,y-1);
    end
end



for x=2:s(1)+1
    for y=2:s(2)+1
       %find the max value 
       arr=sort([p(x-1,y-1) p(x-1,y) p(x-1,y+1) p(x,y-1) p(x,y) p(x,y+1) p(x+1,y-1) p(x+1,y) p(x+1,y+1)]);
       max=arr(9);
       res(x-1,y-1)=max;
       
    end
end

subplot(1,2,2);
imshow(res,[]);
title('Smoothing using max filter(3x3)'); 

 
