%informasi
Fs=10000;
f=10; 
N=10000; 
n=0:N-1;
t=n/Fs; 
x=sin(2*pi*f*t); 
%subplot(5,1,1); 
%plot(t,x,'-r'); 
%xlabel('Time (s)'); ylabel('Amplitudo (V)');
%title('Original Signal'); 
%axis([0 0.5 -1.5 1.5]);

%pembawa
a=sin(2*pi*f*t); 
%subplot(5,1,2); 
%plot(t,a,'-b'); 
%xlabel('Time (s)');
%ylabel('Amplitudo (V)');
%title('Carrier Signal'); 
%axis([0 0.5 -1.5 1.5]);

%AM
Fc=100; 
y=ammod(x,Fc,Fs);
subplot(3,1,1); 
plot(t,y,'-m'); 
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Amplitude Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%FM
Fc=100; 
y=fmmod(x,Fc,Fs,50); 
subplot(3,1,2); 
plot(t,y,'-k'); 
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Frequency Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);

%PM
Fc=100;
y = pmmod(x,Fc,Fs,50); 
subplot(3,1,3); 
plot(t,y,'-g'); 
xlabel('Time(s)');
ylabel('Amplitudo (V)'); 
title('Phase Modulation Signal'); 
axis([0 0.5 -1.5 1.5]);