function H = imfreqfilter(type, M, N, D0, n)
u = 0:(M-1);
v = 0:(N-1);
[V,U] = meshgrid(v,u);
D = sqrt((U-M/2).^2+(V-N/2).^2);
switch type
    case 'LPF' 
        H = double(D<=D0);
    case 'BLPF' 
        H = 1./(1.+(D./D0).^(2*n));
    case 'GLPF' 
        H = exp((-D.^2)/(2*D0.^2));
    case 'HPF' 
        H = double(D>D0);
    case 'BHPF' 
        H = 1./(1.+(D0./D).^(2*n));
    case 'GHPF' 
        H = 1-exp((-D.^2)/(2*D0.^2));
end