t = scope1281(:,1);
u = scope1281(:,2);
y = scope1281(:,4);
plot(t,u,t,y);

i1 = 349;
i2 = 495;
i3 = 745;
i4 = 912;

u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0)

hold on;
plot(t,yst*ones(1,length(t)),'k');
plot(t,y0*ones(1,length(t)),'k');

i5 = 532;
i6 = 566;
i7 = 580;
tau = t(i6)-t(i5);
T = t(i7)-t(i6);

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