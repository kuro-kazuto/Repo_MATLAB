clear all;
t=-3:6/1000:3;
N1=input('Jumlah Sinyal :');
N2=input('Jumlah Sinyal :');
N3=input('Jumlah Sinyal :');
N4=input('Jumlah Sinyal :');
c0=0.5;
w0=pi;
xN1=c0*ones(1,length(t));
xN2=c0*ones(1,length(t));
xN3=c0*ones(1,length(t));
xN4=c0*ones(1,length(t));
for n1=1:2:N1
    theta1=((-1)^((n1-1)/2)-1)*pi/2;
    xN1=xN1+2/n1/pi*cos(n1*w0*t+theta1);
end
for n2=1:2:N2
    theta2=((-1)^((n2-1)/2)-1)*pi/2;
    xN2=xN2+2/n2/pi*cos(n2*w0*t+theta2);
end
for n3=1:2:N3
    theta3=((-1)^((n3-1)/2)-1)*pi/2;
    xN3=xN3+2/n3/pi*cos(n3*w0*t+theta3);
end
for n4=1:2:N4
    theta4=((-1)^((n4-1)/2)-1)*pi/2;
    xN4=xN4+2/n4/pi*cos(n4*w0*t+theta4);
end

hold on
plot(t,xN1, '-r')
hold on; plot(t,xN2, '-g')
hold on; plot(t,xN3, '-b')
hold on; plot(t,xN4, '-k')
title('FENOMENA GIBB')
xlabel('waktu')
ylabel('x(t)')
hold off