function dx=corpUnic(~,x)
    K=1; M=1; D=1; u=5;
    A=[0 1; -K/M -D/M];
    B=[0; 1/M];
    dx=A*x+B*u;
end