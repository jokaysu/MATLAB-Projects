%a testing

clear all;
close all;

A = [0 0 0 0 0 1 0; 0 0 0 0 1 0 0; 1 1 0 0 0 0 0; 1 0 0 0 0 0 0; 0 0 0 1 0 0 0; 0 0 0 0 1 0 1; 0 1 1 1 0 0 0];
[b, c] = PageRank(A, 0.9);
b
c


%b trial

clear all;
close all;

A = [0 0 0 0 0 1 0; 0 0 0 0 1 0 0; 1 1 0 0 0 0 0; 1 0 0 0 0 0 0; 0 0 0 1 0 0 0; 0 0 0 0 1 0 1; 0 1 1 1 0 0 0];
[b, c] = PageRank(A, 0.85);
bar(b);
title('BAR on p');
xlabel('page');
ylabel('probability');
print -deps a4q6bBAR.eps;
spy(A);
title('SPY on G');
xlabel('to i');
ylabel('from j');
print -deps a4q6bSPY.eps

%c trial
clear all;
close all;

load uwaterloo
[p, it] = PageRank(G, 0.85);
spy(G);
title('SPY on G');
xlabel('to i');
ylabel('from j');
print -deps a4q6cSPY.eps;
[y I] = sort(p, 'descend');
for n = 1:min(length(I), 20)
	disp([num2str(n) ': ' U{I(n)}]);
end

%d trial
clear all;
close all;

load uwaterloo
[p, it] = PageRank(G, 0.95);
it
