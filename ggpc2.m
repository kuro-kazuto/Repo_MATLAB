clear all;

[Y1,Fs]=audioread('Westlife-Better_Man.mp3');
Fs=44000;%sampling rate disamakan dengan bawaan file audio
plot(Y1, '-m')
sound(Y1,Fs)

