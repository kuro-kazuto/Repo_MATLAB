clear all;
[Y,Fs]=audioread('kartini.wav');
Fs=16000;
%sound(Y,Fs);
noise=randn(length(Y),1);
Y_noise=Y+0.08*noise;
%sound(Y_noise,Fs)
satu=ones(4,1);
Y_c=conv(satu,Y_noise) ;
sound(Y_c,Fs)
subplot(311); stem(Y, '-r')

subplot(312); stem(Y_noise, '-b')

subplot(313); stem(Y_c, '-k')

