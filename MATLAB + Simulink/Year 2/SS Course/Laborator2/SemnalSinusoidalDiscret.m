A=2; Ns=10; phi=pi/3;
n1=-5; n2=10;
n=n1:n2;

figure()
xs=A*sin(2*pi*(1/Ns)*n+phi);
stem(n,xs);
xlabel('n'),ylabel('xs[n]');
title('xs[n]=A*sin(2* \pi *(1/Ns)*n+ \phi)');
axis tight;
grid on;

figure()
xs=@(t) (A*sin(2*pi*(1/Ns)*n+phi));
stem(n,xs(n));
xlabel('n'),ylabel('xs[n]');
title('xs[n]=A*sin(2* \pi *(1/Ns)*n+ \phi)');
axis tight;
grid on;