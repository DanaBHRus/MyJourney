function [rez,nr] = GS(A,b,tol,x0)
nr=0;
xold=x0;
eroare=1;
n=length(x0);
while (eroare>tol) && (nr<=100)
    for i=1:n
        s=0;
        s1=0;
        for j=1:i-1
            s=s+A(i,j)*xnew(j);
        end
        for j=i+1:n
            s1=s1+A(i,j)*xold(j);
        end
        xnew(i)=(b(i)-s-s1)/A(i,i);
    end
    eroare=norm(xnew-xold,Inf);
    nr=nr+1;
    xold=xnew;
end
rez=xnew;