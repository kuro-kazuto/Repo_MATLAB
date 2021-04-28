Fs = 200;
t = [0:3*Fs+1]'/Fs; Fc = 10;
x = sin(2*pi*t); 
hold on;
%AM DSB SC
subplot(3,1,1);
plot(t,x); 
hold on;
ydouble = modulate(x,Fc,Fs,'amdsb-sc'); 
plot(t,ydouble,'r')
xlabel('waktu t (detik)'); ylabel('AM-DSB-SC');
axis([0 3 -1 1]);
grid on;
%AM-DSB-FC
ydoubletc = modulate(x,Fc,Fs,'amdsb-tc',1);
subplot(3,1,2);
plot(t,x); hold on
xlabel('waktu t (detik)'); ylabel('AM-DSB-FC');
plot(t,ydoubletc,'r');
axis([0 3 -2 2]);
grid on;
%AM-SSB
ysingle=modulate(x,Fc,Fs,'amssb'); 
subplot(3,1,3);
plot(t,x); hold on xlabel('waktu t (detik)'); ylabel('AM-SSB');
plot(t,ysingle,'r');
axis([0 3 -1 1]);
grid on
%CODINGAN DEMODULASI
%AM-DSB-SC
hold on;
y1 = demod(ydouble,Fc,Fs,'amdsb-sc');
subplot(3,1,1);
plot(t,y1,'-k');
axis([0 3 -1 1]);
%AM-DSB-FC
y2 = demod(ydoubletc,Fc,Fs,'amdsb-tc');
subplot(3,1,2);
plot(t,y2, '-k');
axis([0 3 -2 2]);
%AM-SSB
y3 = demod(ysingle,Fc,Fs,'amssb');
subplot(3,1,3);
plot(t,y3,'-k');
axis([0 3 -1 1]);