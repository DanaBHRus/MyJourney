plot(t,u,t,y);

i1 = 344;
i2 = 494;
i3 = 777;
i4 = 916;

u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0)

y28 = y0+(yst-y0)*0.28;
y63 = y0+(yst-y0)*0.63;

hold on;
plot(t,yst*ones(1,length(t)),'k');
plot(t,y0*ones(1,length(t)),'k');
plot(t,y28*ones(1,length(t)),'k');
plot(t,y63*ones(1,length(t)),'k');

i5 = 500;
i6 = 542;
i7 = 586;
t28 = t(i6)-t(i5);
t63 = t(i7)-t(i5);
T = 1.5*(t63-t28)
tau = 1.5*(t28-1/3*t63)

N = round(tau/(t(2)-t(1)));
%numarul tactilor de intarziere = round(timp_mort/perioada de achizitie a datelor)
u_tau = [u(1)*ones(N,1); u(1:end-N)];
A = -1/T;
B = k/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim = lsim(sys,u_tau,t,y(1));

figure()
plot(t,y,t,ysim);
J = norm(y-ysim)/sqrt(length(y));
Empn = norm(y-ysim)/norm(y-mean(y))