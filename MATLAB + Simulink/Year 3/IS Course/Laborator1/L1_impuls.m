t = impuls0(:,1);
u = impuls0(:,2);
y = impuls0(:,3);
plot(t,u,t,y);

i1 = 344;
i2 = 494;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
K = y0/u0

i3 = 236;
ymax = y(i3);
y37 = 0.37*(ymax-y0)+y0;
hold on;
plot(t,y37*ones(1,length(t)))

i4 = 250;
T = t(i4)-t(i3)

A = -1/T;
B = K/T;
C = 1;
D = 0;
ysim = lsim(A,B,C,D,u,t,y(1));
figure;
plot(t,y,t,ysim)

J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))