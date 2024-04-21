function RH(e)
l = length(e);
m = mod(l,2);
c = l/2;
if m==0
    a = rand(1,c);
    b = rand(1,c);
    for i = 1:c
        a(i) = e((2*i)-1);
        b(i) = e(2*i);
    end
else
    e1 = [e 0];
    a = rand(1, (l+1)/2);
    b = [rand(1, (l-1)/2), 0];
    for i = 1:((l+1)/2)
        a(i) = e1((2*i)-1);
        b(i) = e1(2*i);
    end
end 
l1 = length(a);
c = zeros(1,l1);
c(1,:) = a;
c(2,:) = b;
if c(2,:) == 0
    g = l-1;
    p = 1;
    while g >= 0
        c(2,p) = c(1,p)*g;
        p = p+1;
        g = g-2;
    end
end
if c(2,1) == 0
    c(2,1) = sign_double(c,2)*exp(-5);
end
for m = 3:l
    for n = 1:l1-1
    c(m,n) = (1/c(m-1,1)) * (-(c(m-2,1)*c(m-1,n+1))+(c(m-1,1)*c(m-2,n+1)));
    end
    if c(m,:) == 0
        g = l-m+1;
        p = 1;
        while g >= 0
            c(m,p) = c(m-1,p)*g;
            p = p+1;
            g = g-2;
        end
    end
    if c(m,1) == 0
       c(m,1) = sign_double(c,m)*exp(-5);
    end
end
disp(c);
if c(:,1) > 0
    disp('sistem stabil');
else
    if c(:,1) < 0
        disp('sistem stabil');
    else
        disp('sistem instabil');
    end
end
end