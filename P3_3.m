x=imread("tiger.jpg");
X=fft2(x);
M=max(X(:));
f1=find(abs(X)< M/3000);
f2=find(abs(X)< M/800);
X1=X;
X2=X;
X1(f1)=0;
X2(f2)=0;
x1=uint8(ifft2(X1));
x2=uint8(ifft2(X2));
figure(1)
imshow(x1);
figure(2)
imshow(x2);
imwrite(x1,'Tiger1(0.05 Compressed).jpeg');
imwrite(x2,'Tiger2(0.50 Compressed).jpeg');