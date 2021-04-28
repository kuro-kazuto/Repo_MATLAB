T=100;
t=0:1/T:2;
y1=sin(2*pi*2*t);
hold on
plot(t,y1,'-r')
a=input('nilai pengali yang anda gunakan (0<a<1)= ');
y1_kuat=a*sin(2*pi*2*t);
hold on
plot(t,y1_kuat)
hold off

