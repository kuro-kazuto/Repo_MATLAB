%informasi
a=[1 0 0 1 1 0 1 0 1 1];
K=length(a) 
initial_phase=pi; 
N=200; 
i=[0:1:N-1];
for j=[1:1:K]
    for i=[1:1:N] 
    a1(N*(j-1)+i)=a(j); 
    end
end
figure(1)
subplot(3,1,1) 
plot(a1,'r', 'linewidth',2) 
hold on
grid on
axis([0 2000 -1 2]);
title('Sinyal Informasi');

%carrier
f=4;
N=100; 
i=[0:1:N-1];
sin1=sin(2*pi*f*i/N); 
sin11=sin1;
for j=[1:1:K-1]
    sin11=[sin11 sin1];
end
hold on
subplot(3,1,2) 
plot(sin11, 'linewidth',1)
grid on
title('Sinyal Carrier');

%ASK
a=[1 0 0 1 1 0 1 0 1 1];
K=length(a) 
initial_phase=pi; 
f=4;
N=200; 
i=[0:1:N-1];
sin1=sin(2*pi*f*i/N); 
for j=[1:1:K]
    for i=[1:1:N]
        yout(N*(j-1)+i)=a(j)*sin1(i); 
    end
end
subplot(3,1,3) 
hold on
plot(yout, '-m', 'linewidth',1) 
grid on
title('Amplitude Shift Keying');