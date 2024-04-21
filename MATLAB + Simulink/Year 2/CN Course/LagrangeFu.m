function [Vn]=LagrangeFu(xn,x,n)
%calcul valoare polinoame Lagrange
Vn=zeros(1,n);
for i=1:n+1
    num=1;numi=1;
    for j=1:n+1
        if i~=j
            num=num*(x-xn(j));
            numi=numi*(xn(i)-xn(j));
        end
    end
    Vn(i)=num/numi;
end