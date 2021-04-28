t= 0:0.01:2*pi;
polar(t,abs(cos(5*t).*sin(10*t)))

title('\itf(x,y) = cos(5*t).*sin(10*t)')
xlabel('X')
ylabel('Y')

