Fs=100;
t=(1:400)/Fs;
f1=1;
s1=(2/pi)*sin(2*pi*f1*t);
f2=5;
s2=(2/3/pi)*5*sin(2*pi*f2*t);
s=s1+s2;
subplot(211); plot(t,s, '-r')
xlabel('waktu')
S=fft(s,512);
w=(0:255)/256*(Fs/2);
subplot(212); plot(w,abs(S(1:256)), '-g')
xlabel('frekuensi')