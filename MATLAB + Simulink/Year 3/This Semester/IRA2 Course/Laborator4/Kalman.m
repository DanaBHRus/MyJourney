T = 4;
tau = 2;
Te = 0.4;
Hf = tf(1,[T,1],'iodelay', tau);
Hf_d = c2d(Hf,Te,'tustin');
K = 1/(0.04762 + 0.04762);
num = [0 0 0 0 0 0.04762 0.04762];
den = [1 -0.9048];
Hf_d2 = tf(num,den,Te,'Variable','z^-1');
num_n = [1 0 0 0 0 -0.5 -0.5]
Hr = tf(K*den,num_n,Te,'Variable','z^-1');
step(feedback(Hr*Hf_d,1))
%step(Hf_d2)
y = step(feedback(Hr*Hf_d,1),0:Te:20);





