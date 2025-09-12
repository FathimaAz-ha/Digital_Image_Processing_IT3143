A = imread('cameraman.tif'); %Read the image

subplot(1,2,1)
imshow(A); %show the image

B = imadd(A, 100); %Add 100 pixel values to the image A - we can use two images at the same time with imadd function
%it is possible with the same dimension of the image otherwise impossible

subplot(1,2,2)
imshow(B); %Display result image B


