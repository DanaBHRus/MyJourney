im = imread('circles.png');
imshow(im);
if(~islogical(im))
    if (~ismatrix(im))
        im = rgb2gray(im);
    end
    level = graythresh(im);
    BW = imbinarize(im,level);
else
    BW = im;
end
%figure()
%imshow(BW);
[B,L,N] = bwboundaries(BW,'noholes');
for k = 1:N
    X = B{k}(:,2);
    Y = B{k}(:,1);
    contur = [X';Y'];
    figure(), plot(X,Y);
end
angularFunctionDescriptors(contur,15);
ellipticFourierDescriptors(contur,20); %acuratete -- nc
