t = treapta0(:,1);
u = treapta0(:,2);
y = treapta0(:,3);
plot(t,u,t,y);

i1 = 222;
i2 = 496;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
i3 = 564;
i4 = 828;
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
K = (yst-y0)/(ust-u0)

i5 = 501;
y63 = 0.63*(yst-y0)+y0;
hold on;
plot(t,y63*ones(1,length(t)))

i6 = 507;
T = t(i6)-t(i5)

A = -1/T;
B = K/T;
C = 1;
D = 0;
ysim = lsim(A,B,C,D,u,t,y(1));
figure;
plot(t,y,t,ysim)

J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))