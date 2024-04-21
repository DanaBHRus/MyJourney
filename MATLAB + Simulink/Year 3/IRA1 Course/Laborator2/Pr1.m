Hf = tf(1,[1,1,0]);
Hr = tf(10.1,1);
Hd = series(Hr,Hf); %inseriaza
Ho = feedback(Hd,1); %direct, apoi reactie
step(Ho);
t = 0:0.01:30;
t1 = t; %viteza
t2 = t.^2; %acceleratie
figure()
lsim(Ho,t1,t);
figure()
lsim(Ho,t2,t);