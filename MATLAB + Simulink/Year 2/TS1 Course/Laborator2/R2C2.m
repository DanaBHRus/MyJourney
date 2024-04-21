function dx=R2C2(~,x)
    R1=1; R2=1; C1=1; C2=1; u=5;
    A=[-1/(C1*R1) 0; -1/(R1*C2) -1/(R2*C2)];
    B=[1/(C1*R1); 1/(R1*C2)];
    dx=A*x+B*u;
end