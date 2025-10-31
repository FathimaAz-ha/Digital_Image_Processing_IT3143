%lablacian filter - 
%first you have to use grey scale image

I = rgb2gray(imread('peppers.png'));
k = fspecial('laplacian'); %create laplacian filter
IEl = imfilter(double(I),k, 'symmetric'); %laplacian edges


subplot(1,2,1), imshow(I); 
subplot(1,2,2), imshow(IEl); 

