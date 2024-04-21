B = 1/4*[8,-6,12,-24];
A = 1/4*[4,7,12,8];
H = tf(B,A);
step(H);
[Q,R] = deconv([B,zeros(1,3)],A);
gama_0 = Q(1,1);
gama_1 = Q(1,2);
gama_2 = Q(1,3);
gama_3 = Q(1,4);
a2 = 1.75; a1 = 3; a0 = 2;

A = [0 1 0; 0 0 1; -a0 -a1 -a2];
B = [gama_1; gama_2; gama_3];
C = [1 0 0];
D = gama_0;

[num,den] = ss2tf(A,B,C,D);
Hverif = tf(num,den);
hold on, step(Hverif), hold off;

%% FCCo
A2 = A';
B2 = C';
C2 = B';
figure, step(ss(A,B,C,D),ss(A2,B2,C2,D));
