%loading the image cell.tif
a = imread('cell.tif');
subplot(1,2,1);
imshow(a);

%display the dimention of the image using size() function to findout
size(a);

%display the onion.png
x= imread('onion.png');
subplot(1,2,2);
imshow(x)

size(x);

