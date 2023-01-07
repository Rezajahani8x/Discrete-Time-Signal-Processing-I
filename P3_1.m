N=256;
image1=ones(N);
image2=ones(N);
image3=ones(N);
%% image 1
for i=0:N/4
    for j=-i:i
        image1(i+N/4,j+N/2)=0;
    end
end
m=0;
for i=N/2:3*N/4
    for j=N/4+m:3*N/4-m
        image1(i,j)=0;
    end
    m=m+1;
end
%% image 2
image2(N/4:3*N/4,N/4:3*N/4)=0;
%% image 3
image3(:,N/2+1:end)=0;

figure(1)
imshow(image1)
figure(2)
imshow(image2)
figure(3)
imshow(image3)