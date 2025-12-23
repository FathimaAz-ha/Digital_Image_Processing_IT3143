%(a) Read and show the original image
I = imread('cameraman.tif'); 
subplot(1,2,1), imshow(I); 
title('original Image');

%(B)Subtract 100 from each pixel value in the image and show the image
Sub = imsubtract(I, 100);
subplot(1,2,2), imshow(Sub); 
title('subtracted image'); 

%(C) Convert the original image to double precsion
 Id = im2double(I);
 
%(D)If the value of c is 2 the power-law transformation for gamma= 0.75,
%1.25, and 2.5 to the converted image and display the resultant images and
%original image in 2X2 subplot

output1 = 2 * (Id).^0.5; 
output2 = 2 * (Id).^1.25;
output3 = 2 * (Id).^2.5; 

subplot(2,2,1), imshow(I), title('Image Original')
subplot(2,2,2), imshow(output1), title('Gamma = 0.5')
subplot(2,2,3), imshow(output2), title('Gamma=1.25')
subplot(2,2,4), imshow(output3), title('Gamma = 2.5')

%e - if the value of c is 3, do the exponential transformation for alpha
%=0.15, 0.25, and 0.35 to the converted image and display the resultant
%image in 2X2 subplot

output4 = 3 * (1 + 0.15.^Id - 1);
output5 = 3 * (1 + 0.25.^Id - 1);
output6 = 3 * (1 + 0.35.^Id - 1);

subplot(2,2,1), imshow(I), title('Image Original')
subplot(2,2,2), imshow(output4), title('Alpha = 0.15')
subplot(2,2,3), imshow(output5), title('Gamma=0.25')
subplot(2,2,4), imshow(output6), title('Gamma = 0.35')


