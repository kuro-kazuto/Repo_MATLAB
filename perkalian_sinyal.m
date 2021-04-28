T=100;
t=0:1/T:2;
f1=1;
f2=2;
y1=sin(f1*pi*2*t);
hold on
plot(t,y1,'-r')
y2=sin(f2*pi*2*t);
hold on
plot(t,y2,'-g')
y3=y1.*y2;
plot(t,y3)
hold off
