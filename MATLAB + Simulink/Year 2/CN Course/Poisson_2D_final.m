a=0; b=0.5; 
c=0; d=0.5; 
m=4; n=4; 
tol=10^(-10); N=10;
h=(b-a)/n;
k=(d-c)/m;
x=zeros(1,n);
y=zeros(1,m);
for i=1:n-1 
    x(i)=a+i*h;
end
for j=1:m-1 
    y(j)=a+j*h;
end
w=zeros(n,m);
lambda=h^2/k^2;
niu=2*(1+lambda);
l=1;
while l<=N
    i=1;
    z=(-h^2*f(x(i),y(m-1))+g(a,y(m-1))+lambda*g(x(i),d)+lambda*w(i,m-2)+w(i+1,m-1))/niu;
    NORM=norm(z-w(1,m-1),Inf);
    w(1,m-1)=z;
    for i=2:n-2
        z=(-h^2*f(x(i),y(m-1))+lambda*g(x(i),d)+lambda*w(i,m-2)+w(i+1,m-1)+w(i-1,m-1))/niu;
        if norm(w(i,m-1)-z,Inf)>NORM
            NORM=norm(w(i,m-1)-z,Inf);
        end
        w(i,m-1)=z;
    end
    z=(-h^2*f(x(n-1),y(m-1))+g(b,y(m-1))+lambda*g(x(n-1),d)+lambda*w(n-1,m-2)+w(n-2,m-1))/niu;
    if norm(w(n-1,m-1)-z,Inf)>NORM
        NORM=norm(w(n-1,m-1)-z,Inf);
    end
    w(n-1,m-1)=z;
    for j=m-2:-1:2
        z=(-h^2*f(x(1),y(j))+g(a,y(j))+lambda*w(1,j+1)+lambda*w(1,j-1)+w(2,j))/niu;
        if norm(w(1,j)-z,Inf)>NORM
            NORM=norm(w(1,j)-z,Inf);
        end
        w(1,j)=z;
        for i=2:n-2
            z=(-h^2*f(x(i),y(j))+w(i-1,j)+lambda*w(i,j+1)+lambda*w(1,j-1)+w(i+1,j))/niu;
            if norm(w(i,j)-z,Inf)>NORM
                NORM=norm(w(i,j)-z,Inf);
            end
            w(i,j)=z;
        end
        z=(-h^2*f(x(n-1),y(j))+g(b,y(j))+lambda*w(n-1,j+1)+lambda*w(n-1,j-1)+w(n-2,j))/niu;
        if norm(w(n-1,j)-z,Inf)>NORM
                NORM=norm(w(n-1,j)-z,Inf);
        end
        w(n-1,j)=z;
    end
    z=(-h^2*f(x(1),y(1))+g(a,y(1))+lambda*g(x(1),c)+lambda*w(1,2)+w(2,1))/niu;
    if norm(w(1,1)-z,Inf)>NORM
            NORM=norm(w(1,1)-z,Inf);
    end
    w(1,1)=z;
    for i=2:n-2
        z=(-h^2*f(x(i),y(1))+lambda*g(x(i),c)+lambda*w(i,2)+w(i+1,1)+w(i-1,1))/niu;
        if norm(w(i,1)-z,Inf)>NORM
            NORM=norm(w(i,1)-z,Inf);
        end
        w(i,1)=z;
    end
    z=(-h^2*f(x(n-1),y(1))+g(b,y(1))+lambda*g(x(n-1),c)+lambda*w(n-1,2)+w(n-2,1))/niu;
    if norm(w(n-1,1)-z,Inf)>NORM
        NORM=norm(w(n-1,1)-z,Inf);
    end
    w(n-1,1)=z;
    if NORM<=tol
        for i=1:n-1
            for j=1:n-1
                x(i) 
                y(j) 
                w(i,j)
            end
        end
        break
    end
    l=l+1;
end
"Maximum number of iterations excedeed."