load('dat_0p7.mat');

t = double(dat_0p7.X.Data);
y = double(dat_0p7.Y(1).Data)';
w = double(dat_0p7.Y(2).Data)';
u = double(dat_0p7.Y(3).Data)';

plot(t,u,t,w,t,y);
figure()
subplot(211), plot(t,u);
subplot(212), plot(t,w);

Te = t(2)-t(1);
i1 = 972;
i2 = 3075;
i3 = 5824;
i4 = 7983;

data_id_wu = iddata(w(i1:i2),u(i1:i2),Te);
data_vd_wu = iddata(w(i3:i4),u(i3:i4),Te);

data_id = iddata(y(i1:i2),w(i1:i2),Te);
data_vd = iddata(y(i3:i4),w(i3:i4),Te);


m_arx = arx(data_id_wu,[1,1,1]);
figure(),resid(m_arx,data_vd_wu);
figure(),compare(m_arx,data_vd_wu);

m_arx_th_w = arx(data_id,[1,1,0]);
figure(),resid(m_arx_th_w,data_vd);
figure(),compare(m_arx_th_w,data_vd);

%rafinare prin pem
m_arx_th_w_pem = pem(m_arx_th_w,data_id);
figure(),resid(m_arx_th_w_pem,data_vd);
figure(),compare(m_arx_th_w_pem,data_vd);

%rafinare prin decimarea datelor
fd = 18; %factor de decimare
Ted = Te*fd;

data_id_wu_dec = iddata(w(i1:fd:i2),u(i1:fd:i2),Ted);
data_vd_wu_dec = iddata(w(i3:fd:i4),u(i3:fd:i4),Ted);

data_id_dec = iddata(y(i1:fd:i2),w(i1:fd:i2),Ted);
data_vd_dec = iddata(y(i3:fd:i4),w(i3:fd:i4),Ted);

m_arx_dec = arx(data_id_wu_dec,[1,1,1]);
figure(),resid(m_arx_dec,data_vd_wu_dec);
figure(),compare(m_arx_dec,data_vd_wu_dec);

m_arx_th_w_dec = arx(data_id_dec,[1,1,0]);
figure(),resid(m_arx_th_w_dec,data_vd_dec);
figure(),compare(m_arx_th_w_dec,data_vd_dec);

Hc_arx_th_w = tf(m_arx_th_w_dec.B(end)/Ted,[1,0]); %!!!