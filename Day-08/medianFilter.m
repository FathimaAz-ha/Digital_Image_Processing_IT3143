I = imread('rice.png'); %read in the image

Im = medfilt2(I, [15,15]);  %create a median filter

It = I - (Im + 20); %subtract mean image( + constant)
Ibw = imbinarize(It);  %converting to binary


figure,  imshow(I); %display original image
figure, imshow(Im);%display the blurred image
figure, imshow(Ibw); %display clear subtracted images result