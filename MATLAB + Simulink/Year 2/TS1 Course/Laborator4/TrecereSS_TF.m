R1 = 47e3;
R2 = 47e3;
C1 = 220e-9;
C2 = 220e-9;
A = [-1/C1/R1-1/C1/R2, -1/C1/R1;1/C2/R2 0];
B = [1/C1/R1; 0];
C = [0 1];
D = [0];

sys=ss(A,B,C,D);

[num,den]=ss2tf(A,B,C,D);
H = tf(num,den)

%figure()
subplot(211); impulse(sys);
subplot(212); step(sys);

%
figure()
w0 = 1/sqrt(R1*C1*R2*C2)/10;
T = 2*pi/w0;
t = 0:T/100:2*T;
u = sin(w0*t);
x0 = [-1,3];
y = lsim(sys,u,t,x0);
y1 = lsim(H,u,t,x0);
plot(t,u,t,y,t,y1);