I = imread('coins.png');
figure, imshow(I); %display the image
figure, imhist(I); %Display histogram

[counts, bins] = imhist(I); %get histogram bin values.
counts(60) %query 60th bin value

%normally whenn we do without the threshold the histogram shows two peeks
%which shows one for foreground and another one for background and vise
%versa. 
%if we use threshold method it automatically separate the image's
%foreground and background based on the imgae's threshold set by default. 

I1 = imread('cameraman.tif'); 
%you can change the image and test the value of the image thresholds set
%for the relevent image
%Ex : for coin.png 0.4941
level = graythresh(I1);%to separate the background and foreground OTSU method Here it is 0.3451
It = imbinarize(I1, level); %by binarize the image we can display the image clearly. 
figure, imshow(It); 

