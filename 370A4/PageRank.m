function [p, iter] = PageRank(G, alpha)
sss = size(G);
n = sss(1);
d = zeros(n, 1);
for j = 1:n
	cnt = 0;
	for i = 1:n
		if G(i, j) == 1
			cnt = cnt + 1;
		end
	end
	if cnt == 0
		d(j, 1) = 1;
	else 
		for i = 1:n
			if G(i, j) == 1
				G(i, j) = 1/cnt;
			end
		end
	end
end
e = zeros(n, 1) + 1;
va = alpha;
it = 1;
pn = zeros(n, 1) + 1/n;
while va > 0.0000001
	va = va .* alpha;
	it = it + 1;
	pn = alpha .* (G*pn + e*(d'*pn./n)) + (1-alpha) .* e./n;
end
iter = it;
p = pn;
end