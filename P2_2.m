[p,fs]=audioread('phone_number.wav');
n=8;
L=length(p)/n;
x=zeros(8,L);
for i=1:8
    x(i,:)=p(1+(i-1)*L:i*L);    %each row of x contains signal of one code
end
key=['0' '0' '0' '0' '0' '0' '0' '0'];
for i=1:8
    key(i)=dtmf(x(i,:),fs);
end
disp("key =");
disp(key);