%a4q6c

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

%1: https://uwaterloo.ca/support
%2: https://www.facebook.com/university.waterloo
%3: https://uwaterloo.ca/admissions
%4: https://uwaterloo.ca/about
%5: http://uwaterloo.ca/support
%6: http://uwaterloo.ca/admissions
%7: http://uwaterloo.ca/about
%8: https://ar-ar.facebook.com/university.waterloo
%9: https://bg-bg.facebook.com/university.waterloo
%10: https://uwaterloo.ca
%11: https://uwaterloo.ca/hire
%12: https://uwaterloo.ca/offices-services
%13: https://uwaterloo.ca/faculties-academics
%14: http://www.mozilla.org/firefox
%15: http://www.google.com/chrome
%16: http://windows.microsoft.com/en-US/internet-explorer/products/ie/home
%17: http://uwaterloo.ca/hire
%18: https://twitter.com/uWaterloo
%19: https://www.youtube.com/uwaterloo
%20: https://instagram.com/uofwaterloo