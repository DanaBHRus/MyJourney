function RHwithgain(e)
l = length(e);
m = mod(l,2);
c = l/2;
if m==0
    a = sym(rand(1,c));
    b = sym(rand(1,c));
    for i = 1:c
        a(i) = e((2*i)-1);
        b(i) = e(2*i);
    end
else
    e1 = sym([e 0]);
    a = sym(rand(1, (l+1)/2));
    b = sym([rand(1, (l-1)/2), 0]);
    for i = 1:((l+1)/2)
        a(i) = e1((2*i)-1);
        b(i) = e1(2*i);
    end
end
l1 = length(a);
c = sym(zeros(1,l1));
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
    c(2,1) = exp(-6);
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
       c(m,1) = exp(-6);
    end
end
disp(c);
%ecuatiile in k descoperite se pot rezolva folosind sintaxa
%solve(equation), unde equation = c(i,1) == 0, cu i mergand de la 1 la l,
%pentru c(i,1) care il contin pe k
end