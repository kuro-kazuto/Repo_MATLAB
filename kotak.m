Fs=100;
t=(1:100)/Fs;
s1=square(2*pi*5*t);
s2=square(2*pi*10*t);
s3=square(2*pi*15*t);
s4=square(2*pi*20*t);
subplot(221); plot(t,s1,'-r','linewidth',2)
axis([0 1 -1.2 1.2])
subplot(222); plot(t,s2,'-g','linewidth',2)
axis([0 1 -1.2 1.2])
subplot(223); plot(t,s3,'-b','linewidth',2)
axis([0 1 -1.2 1.2])
subplot(224); plot(t,s4,'-m','linewidth',2)
axis([0 1 -1.2 1.2])
