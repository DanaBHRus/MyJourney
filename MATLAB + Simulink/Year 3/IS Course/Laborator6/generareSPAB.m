function out = generareSPAB(n,bi,bj,number_points,p)
    registru = ones(n,1);
    out = ones(p*n,1);
    for i=n+1:number_points/p+1
        bit_nou = xor(registru(bi),registru(bj));
        registru = [bit_nou;registru(1:end-1)];
        out = [out;bit_nou*ones(p,1)];
    end
    out = out(1:number_points);
end