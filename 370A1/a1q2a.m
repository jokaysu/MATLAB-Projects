% A1 q2a

clear all;
close all;

n = 41;
p = zeros(1, n);

p(1) = 1;
p(2) = 0.5714285;
for i = 3:20
	p(i) = (-41) ./ 14 .* p(i-1) + 2 .* p(i-2);
end
p

clear all;
close all;

n = 41;
p = zeros(1, n);

p(1) = 1;
p(2) = 0.5714285;
for i = 3:41
	p(i) = (-41) ./ 14 .* p(i-1) + 2 .* p(i-2);
end
p