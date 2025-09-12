a = imread('cameraman.tif'); %to load the image and convert the image %.tif - gray scale image
imshow(a); %to diplay the original image and original size/ original pixel values

colormap('jet'); %defining a colormap function
%another function to display the image --> it takes the colormap value -
%scale to pick the current color value
imagesc(a);


