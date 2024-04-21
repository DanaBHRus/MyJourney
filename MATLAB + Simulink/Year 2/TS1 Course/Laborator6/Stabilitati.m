A = [0 1/2 0 -1/16;
    1 0 0 0;
    0 1 0 0;
    0 0 1 0];
eig(A)

B = [1;0;0;0];
C = [0 1 -1 1/4];
D = [0];

[num,den] = ss2tf(A,B,C,D);
H = tf(num,den);
%stabilitate externa
gama = deconv([num zeros(1,7)],den);
Ha = [gama(2:5);gama(3:6);gama(4:7);gama(5:8)]; %indexare de la 1 in Matlab;
det(Ha);
det(Ha(1:3,1:3));
det(Ha(1:2,1:2)); %ordinul sistemului in forma minimala este 2

Hm = minreal(H); %toleranta de e-3, daca e nevoie

%stabilitate in sens Lyapunov
P = lyap(A',eye(4)); %Daca exista eroare => sistem instabil intern !
eig(P)