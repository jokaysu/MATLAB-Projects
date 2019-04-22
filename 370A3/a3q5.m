% A3 q5

clear all;
close all;

load train_bird;
x = [1:1:12880];
plot(x,y);
title ('original signal');
print -deps q5f1.eps;
close;

y2 = abs(fft(y));
pspectrum(y2);
print -deps q5f2.eps;
close;

d = fdesign.lowpass('Fp,Fst,Ap,Ast',0.45,0.6,1,60);
Hd = design(d,'equiripple');
y3 = filter(Hd,y);
plot(x,y3);
title ('train');
print -deps q5f3.eps;
close;

d2 = fdesign.highpass('Fst,Fp,Ast,Ap',0.45,0.6,60,1);
Hd2 = design(d2,'equiripple');
y4 = filter(Hd2,y);
plot(x,y4);
title ('train');
print -deps q5f4.eps;
close