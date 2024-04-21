img = imread('peppers.png');
if (ndims(img) == 3)
    img = rgb2gray(img);
end
F = fftshift(fft2(double(img)));
figure(), imshow(img); title('Image');
figure(), imshow(log(abs(F)),[]); title('Magnitude');
figure(), imshow(angle(F)); title('Phase');
filtertype = 'LPF'; %modify the options
D0 = 27;
n = 1;
[M,N] = size(img);
H = imfreqfilter(filtertype,M,N,D0,n);
figure(), surf(H); title(filtertype);
G = H.*F;
figure(), imshow(log(abs(G)),[]); title('Magnitude filterred');
figure(), imshow(angle(G),[]); title('Phase filterred');
imgf = real(ifft2(ifftshift(double(G))));
figure(), imshow(imgf,[]); title('Image filterred');
%% see with freqz2 this one -- see help for extend values