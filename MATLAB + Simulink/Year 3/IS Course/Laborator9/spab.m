function out = spab(N,bi,bj,num_points,p)

if nargin == 4
    p=1;
end

reg = ones(1,N);
out_aux = repmat(reg,1,p);

while length(out_aux) < num_points
    b_nou = xor(reg(bi),reg(bj));
    reg = [b_nou reg(1:N-1)];    
    out_aux = [out_aux b_nou*ones(1,p)];
end

out = out_aux(1:num_points);


end

