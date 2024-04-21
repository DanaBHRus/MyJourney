function [bn]=Bernstein(x,n)
bn=zeros(1,n);
for i=1:n+1
    m=nchoosek(n+1,i);
    bn(i)=m.*x.^i.*(1-x).^(n+1-i);
end
%verifica erorile 