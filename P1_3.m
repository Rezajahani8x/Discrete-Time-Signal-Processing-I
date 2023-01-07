[x,fs]=audioread("sonata.mp3");
x1=x(:,1);
X1=fftshift(fft(x1));
window=15*fs;
noverlap=5*fs;
nfft=length(X1);
spectrogram(x1,window,noverlap,nfft,fs,'yaxis');
title('Spectrogram');
        %%plot x1(t)
t_start=0;
t_end=length(x1)/fs;
t=t_start:1/fs:t_end-1/fs;
figure(2)
plot(t,x1);
xlabel('time');
title('x_1(t)');