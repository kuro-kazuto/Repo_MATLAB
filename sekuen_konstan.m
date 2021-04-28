L=input('Panjang gelombang(>=40)=')
P=input('Panjang Sekuen =')
for n=1:L
    if(n>=P)
        step(n)=1;
    else
        step(n)=0;
    end
end
x=1:L;
stem(x,step,'-r')
axis([0  50 -2 2])