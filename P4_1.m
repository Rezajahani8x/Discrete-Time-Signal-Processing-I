v1=load('v1.mat');
v2=load('v2.mat');
v3=load('v4.mat');
x1=v1.val(1,:);
x2=v2.val(1,:);
x3=v3.val(1,:);
    %% Plotting in time domain
N=length(x1);
T=10;
fs=N/T;
t=0:1/fs:T-1/fs;
figure(1)
subplot(3,1,1);
plot(t,x1);
xlabel('t(s)');
ylabel('Amplitude');
title('x_1(t)');
subplot(3,1,2);
plot(t,x2);
xlabel('t(s)');
ylabel('Amplitude');
title('x_2(t)');
subplot(3,1,3);
plot(t,x3);
xlabel('t(s)');
ylabel('Amplitude');
title('x_3(t)');
        %%Plotting in Frequency Domain
X1=fftshift(fft(x1));
X2=fftshift(fft(x2));
X3=fftshift(fft(x3));
f=-fs/2:fs/N:fs/2-fs/N;
figure(2)
subplot(3,1,1);
plot(f,abs(X1));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('X_1(f)');
subplot(3,1,2);
plot(f,abs(X2));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('X_2(f)');
subplot(3,1,3);
plot(f,abs(X3));
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('X_3(f)');