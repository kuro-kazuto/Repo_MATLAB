clear all;
[y,Fs]=audioread('ggpc.wav');
Fs=16000;
Fs=16000;
sound(y,Fs)
figure(1)
plot(y, '-r')
figure(2)
Y=fft(y); plot((abs(Y(1:3400))))
[y,Fs]=audioread('ggpc.wav');
figure(3)
plot((abs(Y(1:80000))), '-g')