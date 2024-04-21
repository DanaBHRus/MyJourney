x=@(t)(4*cos(pi*t-acos(1/4)));
subplot(2,1,1),fplot(x, [-2,3]);
grid;
xlabel('t'),ylabel('x(t)');

x=@(t)(4*sin(pi*t+asin(1/4)));
subplot(2,1,2),fplot(x, [-2,3]);
grid;
xlabel('t'),ylabel('x(t)');