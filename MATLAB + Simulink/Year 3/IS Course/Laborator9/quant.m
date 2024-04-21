function [t_ext,u_ext,y_ext] = quant(t,u,y,m)

N = 6 + m;

y_min = min(y);
y_max = max(y);

y_min_q = floor(y_min);
y_max_q = ceil(y_max);

alpha = (y_max_q-y_min_q)/(y_max-y_min);
beta = y_min_q-alpha*y_min;

y_new = y*alpha+beta;
y_new = ((floor(y_new*4)/4-beta)/alpha);

Te_new = (t(2)-t(1))/N;
t_ext = 0:Te_new:t(end);

y_ext = [];
u_ext = [];
for idx = 1:length(y_new)-1
    y_ext = [y_ext; y(idx)*ones(N,1)];
    u_ext = [u_ext; u(idx)*ones(N,1)];
end
u_ext = [u_ext;u(end)];
y_ext = [y_ext;y(end)];
end