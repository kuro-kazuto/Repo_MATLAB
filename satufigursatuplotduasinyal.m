t=0:0.001:1;
f1=10;
f2=20;
y1=5*sin((2*pi*f1*t)+(pi/2));
y2=15*sin((2*pi*f2*t));
plot(t,y1, '-b')
hold on
plot(t,y2, '-r')
hold off
title('\ity1 = 5*sin((2*pi*f1*t)+(pi/2))   y2 = 15*sin((2*pi*f2*t)) ')
xlabel('X')
ylabel('Y')