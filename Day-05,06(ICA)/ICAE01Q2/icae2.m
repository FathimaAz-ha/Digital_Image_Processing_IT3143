a = imread('toycars1.png');

subplot(2,4,1); 
imshow(a); 

b = imread('toycars2.png');
subplot(2,4,2);
imshow(b);

C = rgb2gray(a);
subplot(2,4,3);
imshow(C);

D = rgb2gray(b);
subplot(2,4,4);
imshow(D);

E = subtractTwoImages(a,b);
subplot(2,4,5); 
imshow(E); 

F =  subtractTwoImages(b,a);
subplot(2,4,6); 
imshow(E); 

function sub = subtractTwoImages(img1, img2)
sub = img1-img2;
end