A = [0 16 32 48; 16 0 16 32; 32 16 0 16; 48 32 16 0];
h = 1/9 * [1 1 1; 1 1 1; 1 1 1];
imagesc(A);
colormap gray;
title('initial image');
Af = imfilter(A,h,'conv','circular');
figure()
imagesc(Af);
colormap gray;
title('filtred image');