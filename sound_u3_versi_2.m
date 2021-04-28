[y1,Fs] = audioread('Nokia_Tune.ogg');
Fs=8192;
sound(y1,Fs)
amp=10;
y2=amp*y1;
sound(y2,Fs)
subplot(211);
plot(y1,'-r')
subplot(212);
plot (y2, '-b')