T=100;
t=0:1/T:2;
f1=1;
f2=2;
pha2=pi*1.5;
y1=sin(f1*pi*2*t);
subplot(311); plot(t,y1,'-b')
y2=sin(f2*pi*2*t+pha2);
subplot(312); plot(t,y2,'-b')
y3=y1+y2;
subplot(313); plot(t,y3,'-b')
