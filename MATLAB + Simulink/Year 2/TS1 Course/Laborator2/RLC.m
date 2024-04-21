function dx=RLC(~,x)
    R=1;L=1;C=1;u=5;
    A=[-R/L -1/L; 1/C 0];
    B=[1/L;0];
    dx=A*x+B*u;
end