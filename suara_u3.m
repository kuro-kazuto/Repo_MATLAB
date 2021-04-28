[y1,Fs]= audioread('Nokia_Tune.ogg');
Fs = 8192;
sound(y1,Fs)
N=length(y1);
var=0.1;
noise_1=var*randn(N,2);
y_1n= y1+noise_1;
sound(y_1n,Fs)
subplot(211);
plot(y1,'-r')
subplot(212);
plot (y_1n, '-b')