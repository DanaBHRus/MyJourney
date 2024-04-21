function [rez,nr] = Jacobi(A,b,tol,x0)
nr=0;
xold=x0;
eroare=1;
n=length(x0);
while (eroare>tol) && (nr<=100)
    for i=1:n
        s=0;
        for j=1:n
            if (j~=i)
                s=s+A(i,j)*xold(j);
            end
        end
        xnew(i)=(b(i)-s)/A(i,i);
    end
    eroare=norm(xnew-xold,Inf);
    nr=nr+1;
    xold=xnew;
end
rez=xnew;