%a4q6b 

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

%  The result is 6 1 7 3 4 5 2