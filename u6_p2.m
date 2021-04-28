Fs=100;
t=(1:100)/Fs;
f=5;
s=5*sin(2*pi*f*t);
subplot(211); plot(t,s, '-r')
xlabel('waktu')
S=fft(s,512);
w=(0:255)/256*(Fs/2);
subplot(212); plot(w,abs(S(1:256)), '-g')
xlabel('frekuensi')