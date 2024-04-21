[y1,y2]=meshgrid(-0.8:0.1:0.8,-0.8:0.1:0.8);
Vd=2*(-y1.*y1-4*y1.*y2-8*y2.*y2+y1.*y1.*y1+2*y1.*y1.*y2+6*y1.*y2.*y2+10*y2.*y2.*y2);
z=-Vd;
subplot(1,2,1), mesh(y1,y2,z);
title('Vderivat deasupra lui 0');
subplot(1,2,2),[c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;

% figure()
% [y1,y2]=meshgrid(-0.2:0.1:0.2,-0.2:0.1:0.2);
% Vd=2*(-y1.*y1-4*y1.*y2-8*y2.*y2+y1.*y1.*y1+2*y1.*y1.*y2+6*y1.*y2.*y2+10*y2.*y2.*y2);
% z=-Vd;
% subplot(1,2,1), mesh(y1,y2,z);
% title('Vderivat sub 0');
% subplot(1,2,2),[c,h]=contour(y1,y2,z);
% clabel(c,h),colorbar;