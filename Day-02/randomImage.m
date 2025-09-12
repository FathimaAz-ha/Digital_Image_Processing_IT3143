%create a random image
C = rand(256).*1000;  %generates a random image array in 

imshow(C); %poor contrast result using image exceeds expected results

imshow(C, [0 1000]); %but if we specify the range of date imshow also displays correct 

D = imread('onion.png');
Dgray = rgb2gray(D);

subplot(2,1,1);
imshow(D);

subplot(2,1,2);
imshow(Dgray);