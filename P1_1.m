[x,fs]=audioread("sonata.mp3");
x1=x(:,1);
x2=x(:,2);
t_start=0;
t_end=length(x1)/fs;
t=t_start:1/fs:t_end-1/fs;
 %%sampling frequency
disp("Fs=");
disp(fs);
 %%plotting the channels
subplot(2,1,1);
plot(t,x1);
xlabel('time (s)');
ylabel('x_1(t)');
title('First Channel');
subplot(2,1,2);
plot(t,x2);
xlabel('time (s)');
ylabel('x_2(t)');
title('Second Channel');