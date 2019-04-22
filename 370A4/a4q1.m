clear all;
close all;

p = [0 0 0 0 0 1 0; 0 0 0 0 1/2 0 0; 1/2 1/2 0 0 0 0 0; 1/2 0 0 0 0 0 0; 0 0 0 1/2 0 0 0; 0 0 0 0 1/2 0 1; 0 1/2 1 1/2 0 0 0];
a = 0.85;
m = a.*p + (1-a)./7

pv = [1/7 1/7 1/7 1/7 1/7 1/7 1/7]';
for i = 1:15
	pv = m*pv;
end
pv

format long;
for i = 1:10
	pv = m*pv
end