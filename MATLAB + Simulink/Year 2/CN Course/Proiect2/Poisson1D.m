%Poisson Equation -uxx(x)=f(x), xE(0,1), u(0)=u(1)=0
%discretization
a=0;
b=1;
n=100;
dx=(b-a)/n;
x=a:dx:b;
%build the matrix
A=sparse(n+1,n+1);
A(1,1)=1;
for i=2:n
    A(i,[i-1 i i+1])=[1 -2 1];
end
A(n+1,n+1)=1;
%answer matrix
B=ones(n+1,1);
B(1)=0;
B(2:n)=12.*x(2:n).^2.*dx^2;
B(n+1)=0;
%solution of the system
U=A\B;
%compare with exact solution
xf=a:1/1000:b;
yf=xf.^4-xf;
plot(x,U,'o',xf,yf);
xlabel('x');
grid on;
legend('finite deff','exact')
