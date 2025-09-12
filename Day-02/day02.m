A = imread('cameraman.tif');
subplot(2,2,1)
imshow(A); %display with the original

subplot(2,2,2);
imagesc(A); % display image with the current color map

axis image; %if you want the same shape
axis off;  %dont want to use the numbers and lines
colorbar; %activate the colorbar

A(25,50) = 100; %allocating a color value - white
subplot(2,2,3)

imshow(A);


B= imread('onion.png');
subplot(2,2,4);
B(10,10, :) = [255,0,255];
imshow(B);

