[y1,y2]=meshgrid(-2.5:0.1:2.5,-2.5:0.1:2.5);
V=y1.*y1+1.5*y2.*y2;
z=V;
subplot(1,2,1), mesh(y1,y2,z);
title('V');
subplot(1,2,2), [c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;

figure()
[y1,y2]=meshgrid(-0.45:0.01:0.45,-0.45:0.01:0.45);
Vd=-2*y1.*y1-4*y1.*y2-6*y2.*y2+2.*(y1.*(y1.*y1 + 2*y2.*y1) + (3*y2.*(5*y2.*y2 + 3*y1.*y2))/2);
z=-Vd;
subplot(1,2,1), mesh(y1,y2,z);
title('Vderivat deasupra lui 0');
subplot(1,2,2),[c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;

figure()
[y1,y2]=meshgrid(-0.5:0.01:0.5,-0.5:0.01:0.5);
Vd=-2*y1.*y1-4*y1.*y2-6*y2.*y2+2.*(y1.*(y1.*y1 + 2*y2.*y1) + (3*y2.*(5*y2.*y2 + 3*y1.*y2))/2);
z=-Vd;
subplot(1,2,1), mesh(y1,y2,z);
title('Vderivat cade sub 0');
subplot(1,2,2),[c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;
