bw = imread('text2.png');
bw_logical = logical(bw(:,:,1));
a = bw(45:55, 50:60);
a_logical = logical(a);
figure()
imshow(bw);
figure()
imshow(a);

C = real(ifft2(fft2(bw_logical) .* fft2(rot90(a_logical,2),118,328)));
figure()
imshow(C,[]);

thresh = max(C(:)) * 90 / 100;
D = (C > thresh);

se = strel('disk',5);
E = imdilate(D,se);
figure()
imshow(E);