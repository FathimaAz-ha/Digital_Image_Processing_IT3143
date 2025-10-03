a = imread('onion.png');

%figure  - to get multiple windows for output image
figure, imshow(a)

Red = a(:,:,1);
Green = a(:,:,2);
Blue = a(:,:,3);

%uint8 = unsigned integer
%created a matrix
B = zeros(size(a,1), size(a,2), 'uint8');

%to display the red channel
%used cat() - concatinate function to combine 3 values
RedImage = cat(3,Red,B,B);
figure, imshow(RedImage);

C= zeros(size(a,1), size(a,2), 'uint8');
BlueImage = cat(3,C,C,Blue);
figure, imshow(BlueImage);

D= zeros(size(a,1), size(a,2), 'uint8');
greenImage = cat(3,D,Green,D);
figure, imshow(greenImage);

grayScale = rgb2gray(a);
imwrite(grayScale, 'image1.png')

d = (rand(size(grayScale))*255);
d= uint8(d);

E = imadd(grayScale, d);

figure, imshow(E);
title('Random Image')



