t1=-2; t2=6;

tstep=0.001;
t=t1:tstep:t2;
x=(t>=0);
plot(t,x);
xlabel('t'),ylabel('u(t)');
title('Semnal treapta unitara');
grid on
axis tight

figure()
x=@(t) (t>=0);
t=[t1 t2];
fplot(x,t);
xlabel('t'),ylabel('u(t)');
title('Semnal treapta unitara');
grid on
axis tight