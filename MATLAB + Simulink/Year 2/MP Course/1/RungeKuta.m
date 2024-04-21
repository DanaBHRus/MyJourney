t0=0; x0=0;
h=0.01; n=250;
t=t0; x=x0;
T=t; X=x;
for i=1:n
    k1=SNL(t,x);
    k2=SNL(t+h/2,x+h*k1/2);
    k3=SNL(t+h/2,x+h*k2/2);
    k4=SNL(t+h,x+h*k3);
    x=x+h*(k1+2*k2+2*k3+k4)/6;
    t=t+h;
    T=[T;t];
    X=[X;x];
end
plot(T,X,'k');
hold on
xlabel('t'); ylabel('x(t)');
[t,x]=ode23('SNL', [0 2.5], 0); plot(t,x,'m');
hold off