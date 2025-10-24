I = imread('rice.png'); %read in the image
%'replicate' means it adds duplicate value in the corner of the image
%[15,15] filter size
%if we need zero padding it will add zero in the corner image
Im = imfilter(I, fspecial('average', [15,15]), 'replicate'); %create mean image

%when we use the filter the output imge will be blurred - to get the clear
%image we sutract the image from the original image
It = I - (Im + 20); %subtract mean image( + constant C = 20)
Ibw = imbinarize(It);  %converting to binary


figure,  imshow(I); %display original image
figure, imshow(Im);%display the blurred image
figure, imshow(Ibw); %display clear subtracted images result