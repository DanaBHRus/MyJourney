A=2; T=1/10; phi=pi/3;
t1=-0.1; t2=0.2;

figure()
tstep=0.005;
t=t1:tstep:t2;
xs=A*sin(2*pi/T*t+phi);
plot(t,xs,'LineWidth',2);
grid on;
xlabel('t'),ylabel('xs(t)');
title('xs(t)=A*sin(2 \pi /T*t+ \phi)');
axis tight;

figure()
xs=@(t) (A*sin(2*pi/T*t+phi));
t=[t1 t2];
fplot(xs,t);
grid on;
xlabel('t'),ylabel('xs(t)');
title('xs(t)=A*sin(2 \pi /T*t+ \phi)');
axis tight;