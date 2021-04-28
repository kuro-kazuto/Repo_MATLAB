%Informasi
Fs=10000;
f=10;
Fc=100;
N=10000; 
n=0:N-1;
t=n/Fs; 
x=sin(2*pi*f*t);
subplot(4,1,1); 
plot(t,x); 
xlabel('Time (s)');
ylabel('Amplitudo (V)'); 
title('Original Signal'); 
axis([0 0.5 -1.5 1.5]);

%Carrier
a=sin(2*pi*Fc*t); 
subplot(4,1,2); 
plot(t,a,'-r'); 
xlabel('Time (s)');
ylabel('Amplitudo (V)'); 
title('Carrier Signal'); 
axis([0 0.5 -1.5 1.5]);

%Modulasi AM
y=ammod(x,Fc,Fs); 
subplot(4,1,3); 
plot(t,y,'-k');
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Amplitude Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%Demodulasi AM
x=amdemod(y,Fc,Fs); 
subplot(4,1,4);
plot(t,x,'-g') ;
xlabel('Time(s)');
ylabel('Amplitudo (V)') ;
title('Amplitude demodulation Signal') ;
axis([0 0.5 -1.5 1.5]);
