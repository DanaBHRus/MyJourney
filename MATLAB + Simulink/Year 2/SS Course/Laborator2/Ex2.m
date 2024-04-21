n=0:0.25:10;

x=4*cos(pi*n);
subplot(3,1,1);
stem(n,x);
grid on;
xlabel('n'),ylabel('x[n]');
title('subpunct a');
axis tight;

x=2*sin(3*n);
subplot(3,1,2);
stem(n,x);
grid on;
xlabel('n'),ylabel('x[n]');
title('subpunct b');
axis tight;

n=0:1:40;
x=0.9.^n.*cos(pi*n/10);
subplot(3,1,3);
stem(n,x);
grid on;
xlabel('n'),ylabel('x[n]');
title('subpunct c');
axis tight;

figure()
t=0:0.25:10;

x=4*sin(5*pi*t-pi/4);
subplot(2,1,1);
plot(t,x);
grid on;
xlabel('t'),ylabel('x(t)');
title('subpunct d');
axis tight;

x=cos(4*t)+2*sin(8*t);
subplot(2,1,2);
plot(t,x);
grid on;
xlabel('t'),ylabel('x(t)');
title('subpunct e');
axis tight;