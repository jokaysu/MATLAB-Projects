x = logspace(-2,4);
y = 75*x;

y1 = y*2;
loglog(x, y1);

hold on

y2 = y*18;
loglog(x, y2);

y3 = y*28;
loglog(x, y3);

y4 = y*44;
loglog(x, y4);

plot(103.15, 0.156, '*');
plot(738.15, 0.842, '*');
plot(185.15, 1, '*');
plot(150.15, 0.186, '*');
plot(78.15, 28.376, '*');
plot(88.15, 10.087, '*');
plot(53.15, 3.637, '*');
plot(53.15, 4.457, '*');
plot(33.15, 0.011, '*');

legend('Hydrogen', 'Water', 'Nitrogen', 'Carbon Dioxide','Mercury','Venus','Earth','Mars','Jupiter','Saturn','Uranus','Neptune','Pluto');
title('Temperature Limit Comparison');
xlabel('M/R');
ylabel('Temperature(K)');

hold off