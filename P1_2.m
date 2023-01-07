[x,fs]=audioread("sonata.mp3");
x1=x(:,1);
x2=x(:,2);
t_start=0;
t_end=length(x1)/fs;
T=t_end-t_start;
ts=1/fs;
N=T/ts;
    %%Fourier Transform Computation
X1=fftshift(fft(x1));
X2=fftshift(fft(x2));
f=-fs/2:fs/N:(fs/2)-fs/N;
figure(1) %Plotting Fourier Transform
subplot(2,1,1);
plot(f,abs(X1));
xlabel('Frequency');
ylabel('Amplitude');
title("|X_1(jw)|");
subplot(2,1,2);
plot(f,abs(X2));
xlabel('Frequency');
ylabel('Amplitude');
title('|X_2(jw)|');
    %%PSD Computation
PSD=(abs(X1).^2)/T;
figure(2);
plot(f,PSD);
xlabel('Freqeuncy');
ylabel('Amplitude');
title("S_x(f) [Power Spectral Density for x_1(t)]");