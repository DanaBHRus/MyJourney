R1=47e3;
R2=47e3;
C1=220e-9;
C2=220e-9;
H= tf(1/R1/R2/C1/C2,[1 1/R2/C1+1/R1/C1 1/R1/R2/C1/C2]);
[num,den]=tfdata(H,'v');
[A,B,C,D]= tf2ss(num,den);%pentru FCC
%pentru FCO
A_FCO=A';
B_FCO=C';
C_FCO=B';

sys_FCO = ss(A_FCO,B_FCO,C_FCO,D);


H1=tf([1 3.5 3],[1 2.5 1.5]);
minreal(H1)
%parmarkov
[num,data]=tfdata(H1,'V');
gama=deconv(num, zeros(1,5));