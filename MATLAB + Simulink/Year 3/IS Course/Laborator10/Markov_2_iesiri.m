load('dat_0p7.mat');

t = double(dat_0p7.X.Data);
y = double(dat_0p7.Y(1).Data)';
w = double(dat_0p7.Y(2).Data)';
u = double(dat_0p7.Y(3).Data)';

Te = t(2)-t(1);
i1 = 972;
i2 = 3075;
i3 = 5824;
i4 = 7983;

%%identificare intrare cu doua iesiri: viteza & pozitie
data_id_thwu = iddata([w(i1:i2) y(i1:i2)],u(i1:i2),Te);
data_vd_thwu = iddata([w(i3:i4) y(i3:i4)],u(i3:i4),Te);

n4sid(data_id_thwu,1:15);
m_n4sid = n4sid(data_id_thwu,2);
figure(),resid(m_n4sid,data_vd_thwu);
figure(),compare(m_n4sid,data_vd_thwu);