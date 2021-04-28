Fs=20; t=(0:Fs-1)/Fs; s=sin(2*pi*t*2);
Fs1=30; t1=(0:Fs1-1)/Fs1; s1=sin(2*pi*t1*2);
Fs2=40; t2=(0:Fs2-1)/Fs2; s2=sin(2*pi*t2*2);
Fs3=50; t3=(0:Fs3-1)/Fs3; s3=sin(2*pi*t3*2);
Fs4=60; t4=(0:Fs4-1)/Fs4; s4=sin(2*pi*t4*2);
Fs5=70; t5=(0:Fs5-1)/Fs5; s5=sin(2*pi*t5*2);
Fs6=80; t6=(0:Fs6-1)/Fs6; s6=sin(2*pi*t6*2);
subplot(421); stem(t,s,'-r')
subplot(422); stem(t1,s1,'-g')
subplot(423); stem(t2,s2,'-b')
subplot(424); stem(t3,s3,'-c')
subplot(425); stem(t4,s4,'-m')
subplot(426); stem(t5,s5,'-y')
subplot(427); stem(t6,s6,'-k')
axis([0 1 -1.2 1.2])