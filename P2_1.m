[x1,fs1]=audioread('3.wav');
[x2,fs2]=audioread('hash.wav');
key1=dtmf(x1,fs1);
key2=dtmf(x2,fs2);
disp('key 1=');
disp(key1);
disp('key 2=');
disp(key2);