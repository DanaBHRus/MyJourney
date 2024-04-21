kp = 0.933;

Hf = 0.0625*1.4142*0.6*30*tf(1,[3.5*10^-3*13.888*10^-5, 3.5*10^-3/15,1]);
Ho = feedback(kp*Hf,0.5);

Hf1 = 0.0625*1.4142*0.6*(30-10/100*30)*tf(1,[3.5*10^-3*13.888*10^-5, 3.5*10^-3/15,1]);
Ho1 = feedback(kp*Hf1,0.5);

Hf2 = 0.0625*1.4142*0.6*30*tf(1,[3.5*10^-3*13.888*10^-5, 3.5*10^-3/(15-20/100*15),1]);
Ho2 = feedback(kp*Hf2,0.5);

%!referinta e pct 5 -  12.7279