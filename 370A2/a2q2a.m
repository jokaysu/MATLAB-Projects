% A2 q2a

clear all;
close all;

x = [0:50];
y1 = analy(x);
y3 = ForwardEuler(@ff, 0, 5, 50, 0.5);
y2 = y3.'
plot(x, y1, '-');
hold on;
plot(x, y2, '.');
