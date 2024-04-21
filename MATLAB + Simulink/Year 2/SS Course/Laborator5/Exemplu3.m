x = @(t)(-1*((t>=-1)&(t<0)) + (1-t).*((t>=0)&(t<1)) + (4-2*t).*((t>=1)&(t<2)));
t = -3:0.001:4;
y = abs((x(t)-x(t-1)));
subplot(211),plot(t,x(t)),legend('x(t)');
subplot(212),plot(t,y),legend('y(t)');