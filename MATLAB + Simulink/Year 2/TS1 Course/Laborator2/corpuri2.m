function dx=corpuri2(~,x)
    K=1; J1=1; J2=1; D1=1; D2=1; u=5;
    A=[0 1 0 0; -K/J1 -D1/J1 K/J1 0; 0 0 0 1; K/J2 0 -K/J2 -D2/J2];
    B=[0; 1/J1; 0; 0];
    dx=A*x+B*u;
end