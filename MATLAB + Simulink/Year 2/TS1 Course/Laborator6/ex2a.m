A = [0.5 1 0; 0 0 1; 12.5 0 0];
eig(A)

B = [1;1.5;-10];
C = [1 0 0];
D = [0];

[num,den] = ss2tf(A,B,C,D);
H = tf(num,den);
H = minreal(H);
pole(H)