u0 = @(t)(t>=0);
A=2; T=1; t=-2:0.001:2;
i=A*u0(t+T/2)-A*u0(t-T/2);
plot(t,i,'LineWidth',2);
grid;
xlabel('t'),ylabel('i(t)');
