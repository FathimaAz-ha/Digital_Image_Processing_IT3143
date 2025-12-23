A = imread('cameraman.tif'); 
subplot(1,2,1), imshow(A);
B = imcomplement(A); %inverting the image
subplot(1,2,2), imshow(B); 