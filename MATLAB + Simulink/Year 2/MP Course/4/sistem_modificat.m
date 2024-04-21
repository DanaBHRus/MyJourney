[y1,y2]=meshgrid(-2.5:0.1:2.5,-2.5:0.1:2.5);
V=0.0714*y1.*y1-2*0.0204*y1.*y2+0.0831*y2.*y2;
z=V;
subplot(1,2,1), mesh(y1,y2,z);
title('V modificat');
subplot(1,2,2), [c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;

figure()
[y1,y2]=meshgrid(-0.9:0.01:0.9,-0.9:0.01:0.9);
Vd=2*0.0714*(y1.^3+2*y1.^2.*y2-(2+5)*y1.^2-4*y1.*y2)-2*0.0204*(y1.^2+2*y1.*y2-(2+5)*y1-(8+3)*y2+5*y2.^2+3*y1.*y2)+2*0.0831*(5*y2.^2+3*y1.*y2.^2-(4+3)*y2.^2);
z=-Vd;
subplot(1,2,1), mesh(y1,y2,z);
title('Vderivat modificat deasupra lui 0');
subplot(1,2,2),[c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;

figure()
[y1,y2]=meshgrid(-0.95:0.01:0.95,-0.95:0.01:0.95);
Vd=2*0.0714*(y1.^3+2*y1.^2.*y2-(2+5)*y1.^2-4*y1.*y2)-2*0.0204*(y1.^2+2*y1.*y2-(2+5)*y1-(8+3)*y2+5*y2.^2+3*y1.*y2)+2*0.0831*(5*y2.^2+3*y1.*y2.^2-(4+3)*y2.^2);
z=-Vd;
subplot(1,2,1), mesh(y1,y2,z);
title('Vderivat modificat cade sub 0');
subplot(1,2,2),[c,h]=contour(y1,y2,z);
clabel(c,h),colorbar;