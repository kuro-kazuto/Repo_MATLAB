%Informasi
Fs=10000;
f=10;
Fc=100;
N=10000; 
n=0:N-1;
t=n/Fs; 
x=sin(2*pi*f*t);
figure(1); 
plot(t,x,'-b'); 
xlabel('Time (s)');
ylabel('Amplitudo (V)'); 
title('Original Signal'); 
axis([0 0.5 -1.5 1.5]);

%Carrier
a=sin(2*pi*Fc*t); 
figure(2); 
plot(t,a,'-r'); 
xlabel('Time (s)');
ylabel('Amplitudo (V)'); 
title('Carrier Signal'); 
axis([0 0.5 -1.5 1.5]);

%Modulasi AM
y=ammod(x,Fc,Fs); 
figure(3); 
plot(t,y,'-k');
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Amplitude Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%Demodulasi AM
x=amdemod(y,Fc,Fs); 
figure(4);
plot(t,x,'-g') ;
xlabel('Time(s)');
ylabel('Amplitudo (V)') ;
title('Amplitude demodulation Signal') ;
axis([0 0.5 -1.5 1.5]);

%Modulasi FM
y=fmmod(x,Fc,Fs,50); 
figure(5); 
plot(t,y,'-k');
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Frequency Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%Demodulasi FM
x=fmdemod(y,Fc,Fs,50); 
figure(6);
plot(t,x,'-g') ;
xlabel('Time(s)');
ylabel('Amplitudo (V)') ;
title('Frequency demodulation Signal') ;
axis([0 0.5 -1.5 1.5]);

%Modulasi PM
y=pmmod(x,Fc,Fs,3); 
figure(7); 
plot(t,y,'-k');
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Phase Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%Demodulasi PM
x=pmdemod(y,Fc,Fs,3); 
figure(8);
plot(t,x,'-g') ;
xlabel('Time(s)');
ylabel('Amplitudo (V)') ;
title('Phase demodulation Signal') ;
axis([0 0.5 -1.5 1.5]);
