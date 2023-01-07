function y=Cepstrum(x)
        X=fft(x);
        X=abs(X);
        X=log10(X);
        y=ifft(X);
end