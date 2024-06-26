n = -1:9;
u = @(n)(n>=0);
x = u(n)-u(n-2);
y = 0.2.^n.*u(n);
dtw = -2:18;
w = conv(x,y);
subplot(311), stem(n,x);
xlabel('n'),ylabel('x[n]'),grid;
subplot(312), stem(n,y);
xlabel('n'),ylabel('y[n]'),grid;
subplot(313), stem(dtw,w);
xlabel('n'),ylabel('w[n]'),grid;
hold on;
w1 = ((0.2.^dtw.*(u(dtw)-u(dtw-2)).*0.25.*(5-5.^(dtw-1))+0.2.^(dtw-1).*u(dtw-1))).*(mod(dtw,2)) + ((0.2.^dtw.*(u(dtw)-u(dtw-2)).*0.25.*(5-5.^(dtw))+0.2.^(dtw-1).*u(dtw-1))).*(not(mod(dtw,2)));
stem(dtw,w1,'*r');
legend('w','w1');