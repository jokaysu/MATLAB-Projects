function [res] = analy(t)

	N = length(t);
	for n = 1:N
		res(n) = 1/(2+t(n).^3);
	end

end