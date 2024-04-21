A = [2];
eig(A)

B = [1];
C = [0];
D = [2];

[num,den] = ss2tf(A,B,C,D);
H = tf(num,den);
H = minreal(H);
pole(H)