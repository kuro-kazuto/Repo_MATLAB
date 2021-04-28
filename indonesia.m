clear all;
clc
Fs=50000;
t=0:1/Fs:0.25;
%oktaf 1
c=sin(2*pi*130.8*t);
cpagar=sin(2*pi*138.6*t);
d=sin(2*pi*146.8*t);
dpagar=sin(2*pi*155.6*t);
e=sin(2*pi*164.8*t);
f=sin(2*pi*174.6*t);
fpagar=sin(2*pi*185*t);
g=sin(2*pi*196*t);
gpagar=sin(2*pi*207.7*t);
a=sin(2*pi*220*t);
apagar=sin(2*pi*233.1*t);
b=sin(2*pi*247*t);

%oktaf2
c1=sin(2*pi*261.6*t);
c1pagar=sin(2*pi*277.2*t);
d1=sin(2*pi*293.7*t);
d1pagar=sin(2*pi*311.1*t);
e1=sin(2*pi*329.6*t);
f1=sin(2*pi*349.2*t);
f1pagar=sin(2*pi*370*t);
g1=sin(2*pi*394*t);
g1pagar=sin(2*pi*415.3*t);
a1=sin(2*pi*440*t);
a1pagar=sin(2*pi*466.2*t);
b1=sin(2*pi*493.9*t);

%oktaf3
c2=sin(2*pi*523.3*t);
c2pagar=sin(2*pi*554.4*t);
d2=sin(2*pi*587.3*t);
d2pagar=sin(2*pi*622.3*t);
e2=sin(2*pi*659.3*t);
f2=sin(2*pi*698.5*t);
f2pagar=sin(2*pi*740*t);
g2=sin(2*pi*784*t);
g2pagar=sin(2*pi*830.6*t);
a2=sin(2*pi*880*t);
a2pagar=sin(2*pi*932.3*t);
b2=sin(2*pi*987.8*t);

nol=[zeros(size(t))];
nada1=[e1,e1,f1,g1,g1,g1,e2,e2,e2,nol,nol,e2,d2,d2,d2,c2,c2,c2,g1,g1,1,nol,nol,nol,g1,g1,g1,a1,a1,a1,g1,g1,g1,f1,f1,f1,e1,e1,e1,d1,d1,d1,d1,d1,d1,nol,nol,nol];
nada2=[d1,d1,e1,f1,f1,f1,d2,d2,d2,nol,nol,d1,c2,c2,c2,b1,b1,b1,a1,a1,a1,nol,nol,nol,g1,g1,g1,b1,b1,b1,a1,a1,a1,g1,g1,g1,f1,f1,f1,e1,e1,e1,e1,e1,e1,nol,nol,nol];
nada3=[e1,e1,f1,g1,g1,g1,e2,e2,e2,nol,nol,e2,d2,d2,d2,c2,c2,c2,g1,g1,g1,nol,nol,nol,g1,g1,g1,a1,a1,a1,g1,g1,g1,c2,c2,c2,d2,d2,d2,b1,b1,b1,b1,b1,b1,a1,a1,nol,nol];
nada4=[a1,a1,a1,f2,f2,f2,f2,f2,f2,e2,e2,e2,d2,d2,d2,g2,g2,g2,g2,g2,g2,c2,c2,nol,b1,b1,a1,g1,g1,g1,f2,f2,f2,e2,e2,e2,d2,d2,d2,c2,c2,c2,c2,c2,c2,nol];
lagu=[nada1,nada2,nada3,nada4];

sound(lagu,Fs)
axis([0 1 -1.2 1.2])
