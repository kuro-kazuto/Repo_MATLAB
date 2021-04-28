%Tugas Modul Unit 2 Dastel
%Created By : GALIH AP

%Sinyal Sinus
clear all; clc; 
Fs = 150;
t = [0:4*Fs+1]'/Fs; 
Fc = 20;
x = sin(2*pi*t);
figure(1);
plot(t,x,'-b'); 
axis([0 4 -1 1]);
xlabel('waktu');
grid on

%Dalam Domain Frekuensi (No 2)
S=fft(x,512);
w=(0:255)/256*(Fs/2);
figure(2);
stem(w,abs(S(1:256)), '-k')
xlabel('frekuensi')
grid on
%=========================================================
%AM-DSB-FC (No 3)
DSBFC = modulate(x,Fc,Fs,'amdsb-tc',1);
figure(3);
subplot(211);
plot(t,x); 
hold on
xlabel('waktu t (detik)'); ylabel('AM-DSB-FC');
plot(t,DSBFC,'-r');
axis([0 4 -2 2]);
grid on;

%Domain Frekuensi
S=fft(DSBFC,512);
w=(0:255)/256*(Fs/2);
subplot(212);
stem(w,abs(S(1:256)), '-k')
xlabel('frekuensi')
grid on
%=========================================================
%AM-DSB-SC (No 4)
DSBSC = modulate(x,Fc,Fs,'amdsb-sc'); 
figure(4);
subplot(211);
plot(t,x,'-b');
hold on
plot(t,DSBSC,'-r');
xlabel('waktu t (detik)'); ylabel('AM-DSB-SC');
axis([0 4 -2 2]);
grid on;

%Domain Frekuensi
S=fft(DSBSC,512);
w=(0:255)/256*(Fs/2);
subplot(212);
stem(w,abs(S(1:256)), '-k')
xlabel('frekuensi')
grid on
%========================================================
%AM-SSB (No 5)
SSB=modulate(x,Fc,Fs,'amssb'); 
figure(5);
subplot(211);
plot(t,x); 
hold on 
xlabel('waktu t (detik)'); ylabel('AM-SSB');
plot(t,SSB,'r');
axis([0 3 -1 1]);
grid on

%Domain Frekuensi
S=fft(SSB,512);
w=(0:255)/256*(Fs/2);
subplot(212);
stem(w,abs(S(1:256)), '-k')
xlabel('frekuensi')
grid on
%==============         END SCRIPT         ==============
