U1 = 220; %V
U2N = 30; %V
I2N = 2; %A
P2 = U2N*I2N; %W
niu_tr = 0.86;
Pg = P2/2*(1+1/niu_tr); %W
J = 3.04; %A/mm^2
S_Fe = 1.2*sqrt(Pg*(1+niu_tr)/(J*niu_tr)); %cm^2
I1 = Pg/U1; %A
R2N = U2N/I2N; %ohmi
R2 = 0.75/100*R2N; %ohmi
R1 = 0.6/100*(U1/I1); %ohmi
R2_stelat = R2+R1*(U2N/U1)^2; %ohmi

