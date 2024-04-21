N=5;
x = [1 1 -1 -1];
xr = repmat(x,1,N);
n=0:length(xr)-1;
subplot(1,2,1), stem(n,xr);
grid ON;

n=0:4*N-1;
xm=mod(n,N);
subplot(1,2,2), stem(n,xm);
grid ON;