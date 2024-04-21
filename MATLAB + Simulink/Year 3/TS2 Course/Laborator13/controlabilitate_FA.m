A = [0 -1;1 -1];
B = [1;0];
C = [0 2];
D = 0;
%studiul controlabilitatii
rank(ctrb(A,B));
%calcul K: regim impus/ poli impusi / performante impuse
%doresc polii -4,-3
K = acker(A,B,[-3,-4]);
eig(A-B*K);

sigma = 0.05;
tita = -log(sigma)/sqrt(pi^2+(log(sigma)^2));
wn = 4/5.6/tita;
poli_impusi = [-tita*wn+wn*sqrt(1-tita^2)*1j -tita*wn-wn*sqrt(1-tita^2)*1j];
K2 = acker(A,B,poli_impusi);

F = inv(C*((-A+B*K2)\B));

step(ss(A,B,C,D), ss(A-B*K2,B,C,D), ss(A-B*K2,B*F,C,D))