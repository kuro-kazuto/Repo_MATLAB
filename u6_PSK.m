%informasi
a=[0 0 0 1 1 0 1 0 1 1];
K=length(a) 
initial_phase=pi; 
N=200;
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

%carrier
f=2;
N=200; 
i=[0:1:N-1];
sin2=sin(2*pi*f*i/N); 
sin1=sin(2*pi*f*i/N+pi); 
for j=[1:1:K]
    for i=[1:1:N]
        yout(N*(j-1)+i)=a(j)*sin1(i)+(1-a(j))*sin2(i); 
    end
end 
sin22=sin2; 
sin11=sin1; 
for j=[1:1:K-1]
    sin22=[sin22 sin2]; 
    sin11=[sin11 sin1];
end
subplot(3,1,2) 
plot(sin22) 
hold on
grid on

%PSK
K=length(a) 
a2=a;
for j=[2:1:K]
    if a(j)==a(j-1) 
        a2(j)=0;
    else 
        a2(j)=1;
    end 
end
initial_phase=pi; 
f=2;
N=200; 
i=[0:1:N-1];
sin2=sin(2*pi*f*i/N); 
sin1=sin(2*pi*f*i/N+pi); 
for j=[1:1:K]
    for i=[1:1:N]
        yout(N*(j-1)+i)=a(j)*sin1(i)+(1-a(j))*sin2(i); 
    end
end 
subplot(3,1,3) 
plot(yout, '-m')
hold on 
grid on