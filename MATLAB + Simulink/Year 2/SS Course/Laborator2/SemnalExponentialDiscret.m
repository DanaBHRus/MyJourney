a=0.2; b=0.5;
n1=0; n2=10; n=n1:n2;

figure()
xe=a*b.^n;
stem(n,xe);
xlabel('n'),ylabel('xe[n]');
title('xe[n]=a*b^n');
grid on;
axis tight;

figure()
xe=@(n) (a*b.^n);
stem(n,xe(n));
xlabel('n'),ylabel('xe[n]');
title('xe[n]=a*b^n');
grid on;
axis tight;