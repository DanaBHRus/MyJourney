R = 2.2;
L = 1e-4;
C = 4.7e-6;
H = tf([1/(R*C) 0], [1 1/(R*C) 1/(L*C)]);

%frecvente medii
w0=1/sqrt(L*C);
T = 2*pi/w0;
t=0:T/100:5*T;
u=sin(w0*t);
y=lsim(H,u,t);
plot(t,u,t,y);

%frecvente joase
figure()
w1=w0/10;
T = 2*pi/w1;
t=0:T/100:5*T;
u=sin(w1*t);
y=lsim(H,u,t);
plot(t,u,t,y);

%frecvente inalte
figure()
w2=w0*10;
T = 2*pi/w2;
t=0:T/100:5*T;
u=sin(w2*t);
y=lsim(H,u,t);
plot(t,u,t,y);