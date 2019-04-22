% A2 q1b

function Fv=dynamics(t,Y,c1,c2,k1,k2);

	Fv(1,1)=Y(3);
	Fv(2,1)=Y(4);
	Fv(3,1)=sin(t)-c1*(Y(3)-Y(4))-k1*(Y(1)-Y(2))-k2*Y(1);
	Fv(4,1)=c1*(Y(3)-Y(4))-c2*(Y(1)-Y(2))
	
end
