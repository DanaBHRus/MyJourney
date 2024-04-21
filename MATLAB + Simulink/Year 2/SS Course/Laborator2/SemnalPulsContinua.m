e=1/100;
t1=-1; t2=5;

figure()
tstep=0.005;
t=t1:tstep:t2;
x=(1/e)*((t>0)&(t<=e));
plot(t,x);
xlabel('t'),ylabel('p(t)');
title('Semnal puls, \epsilon = 1/100');
axis tight;
grid on;

figure()
x=@(t) (1/e)*((t>0)&(t<=e));
t=[t1 t2];
fplot(x,t,5000);
set(gca,'FontSize',14);
xlabel('t'),ylabel('p(t)');
title('Semnal puls, \epsilon = 1/100');
axis tight;
grid on;