function result = Ex2(n)
    if n==1 || n==0
        result=1;
        return;
    end
    result=n*Ex2(n-1);
end