% t=-2:0.01:0;
% plot(t,-t/2,'b')
% hold on
% t=0:0.01:2;
% plot(t,t/2,'b')

t=-2:0.1:2;
for i=1:length(t)
    if t(i)<0 y(i)=-t(i)/2;
    else y(i)=t(i)/2;
    end
end
plot(t,y)
title('1a');
grid on
axis tight
xlabel('t'),ylabel('y(t)');

figure()
t2=-10:0.1:10;
for i=1:length(t2)
    if t2(i)>=-4 && t2(i)<4 y2(i)=abs(cos(2*t2(i)));
    else y2(i)=sin(t2(i));
    end
end
plot(t2,y2)
title('1b');
grid on
axis tight
xlabel('t'),ylabel('y(t)');

figure()
t2=0:1:10;
y2=0.5.^t2;
plot(t2,y2);
title('1c');
grid on
axis tight
xlabel('t'),ylabel('y(t)');

figure()
n=1:1:100;
x=(1+1./n).^n;
stem(n,x);
title('1d')
grid on;
axis tight
xlabel('n'),ylabel('x(n)');