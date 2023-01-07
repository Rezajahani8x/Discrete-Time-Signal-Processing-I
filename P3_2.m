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

        %% 2D FT
X1=abs(fftshift(fft2(image1)));
X2=abs(fftshift(fft2(image2)));
X3=abs(fftshift(fft2(image3)));
X1=(256/max(X1(:)))*X1;
X2=(256/max(X2(:)))*X2;
X3=(256/max(X3(:)))*X3;
figure(1);
imshow(X1);
title('Picture 1');
figure(2);
imshow(X2);
title('Picture 2');
figure(3);
imshow(X3);
title('Picture 3');
