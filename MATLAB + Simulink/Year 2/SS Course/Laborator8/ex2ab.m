%Blur Gaussian filter
A = imread('peppers.png');
h = 1/256 * [1 4 6 4 1; 4 16 24 16 4; 6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1];
imagesc(A);
%colormap gray; -- cut this sequence !redundant
title('initial image');
Af = imfilter(A,h,'conv','circular');
figure()
imagesc(Af);
colormap gray;
title('filtred image with blur Gaussian filter');

%Motion blur from lab
h = zeros(9,9);
for i = 1:length(h)
    for j = 1:length(h)
        if (i==j)
            h(i,j)=1;
        end
    end
end
Af = imfilter(A,h,'conv','circular');
figure()
imagesc(Af);
colormap gray;
title('filtred image with Motion blur from lab');

%Motion blur using eye
h = eye(9);
Af = imfilter(A,h,'conv','circular');
figure()
imagesc(Af);
colormap gray;
title('filtred image with Motion blur using eye');

%evidentiere muchii (sharpening)
h = [-1 -1 -1; -1 9 -1; -1 -1 -1];
Af = imfilter(A,h,'conv','circular');
figure()
imagesc(Af);
colormap gray;
title('filtred image with sharpening');

%filtre de tip Laplacian pentru detectia liniilor si muchiilor