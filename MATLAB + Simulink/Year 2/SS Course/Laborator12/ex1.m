img = imread('peppers.png');
if (ndims(img) == 3)
    img = rgb2gray(img);
end
HS = [1 0 -1; 2 0 -2; 1 0 -1];
HSp = fspecial('prewitt');
HSfr = freqz2(HS); %check for nucleo -- like other ex
HSpfr = freqz2(HSp);
imgfr = freqz2(img);
%figure(), imshow(img);
%figure(), imshow(real(imgfr));
F = fftshift(fft2(double(imgfr)));
figure(), imshow(log(abs(F)),[]); title('Magnitude');
figure(), imshow(angle(F)); title('Phase');
figure(), surf(real(HSfr)); title('Sobel');
G1 = HSfr.*F;
figure(), imshow(log(abs(G1)),[]); title('Magnitude filterred 1');
figure(), imshow(angle(G1),[]); title('Phase filterred 1');
imgf1 = real(ifft2(ifftshift(double(G1))));
figure(), imshow(imgf1,[]); title('Image filterred 1');
G2 = HSpfr.*F;
figure(), imshow(log(abs(G2)),[]); title('Magnitude filterred 2');
figure(), imshow(angle(G2),[]); title('Phase filterred 2');
imgf2 = real(ifft2(ifftshift(double(G2))));
figure(), imshow(imgf2,[]); title('Image filterred 2');