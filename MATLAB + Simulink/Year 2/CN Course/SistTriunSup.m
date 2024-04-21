function [x]=SistTriunSup(U,b)
n=length(b);
x=zeros(1,n);
x(n)=b(n)/U(n,n);
for i=n-1:-1:1
    s=0;
    for j=i+1:n
        s=s+U(i,j)*x(j);
    end
    x(i)=(b(i)-s)/U(i,i);
end