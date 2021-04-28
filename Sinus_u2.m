Fs=100; 
t=(1:100)/Fs;
s1=sin(2*pi*t*5); 
s2=2*sin(2*pi*t*5);
s3=2*sin(2*pi*t*5 + pi/2);
hold on
plot(t,s1,'-r')
hold on
plot (t,s2, '-g')
hold on
plot (t,s3, '-b')
hold off