clear all; clc;
%a=[1 2 3;4 5 6;7 8 9]
%a=[1 2 3
 %   4 5 6
  %  7 8 9]
%a1=[1 2 3]
%a2=[4 5 6]
%a3=[7 8 9]
%a=[a1;a2;a3]

%a=input('M = ');
%disp(a)

%n = 25;
%t = 0 : 1/n : 10;
%y = sin(t);
%plot (t,y,'or')
%title ('Grafik Y = Sin(t)')
%grid
%xlabel('t'), ylabel('Amplitude')

%t=0:0.1:10;
%x=sin(t);
%y=sin(t+30);
%subplot(2,1,1)
%plot(t,x,'r-')
%grid on
%xlabel('t'),ylabel('Amplitude')
%title(' Grafik x = Sin(t)')
%subplot(2,1,2)
%plot(t,y,'bo')
%grid on
%xlabel('t'),ylabel('Amplitude')
%grid on
%title('Grafik y = sin(t+30)')
%hold off

n=25;
x=0:1/n:3;
plot3(x,sin(5*x),sin(5*x));
grid
