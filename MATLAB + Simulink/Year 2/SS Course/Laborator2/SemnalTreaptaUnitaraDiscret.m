n1=-5; n2=10;
n=n1:n2;

figure()
x=(n>=0);
stem(n,x);
xlabel('n'),ylabel('u[n]');
title('Secventa treapta unitara');
grid on;
axis tight;

figure()
x=@(n) (n>=0);
stem(n,x(n));
% x=(n>=0);
% stem(n,x);
xlabel('n'),ylabel('u[n]');
title('Secventa treapta unitara');
grid on;
axis tight;