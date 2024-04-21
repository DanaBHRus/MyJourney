function r = sign_double(c,m)
    if c(m-1,1) < 0
        r = -1;
    else 
        r = 1;
    end
end