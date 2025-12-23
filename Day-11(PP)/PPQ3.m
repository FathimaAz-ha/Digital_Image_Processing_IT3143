I = imread('onion.png'); 

subplot(3,3,1), imshow(I); 

Red = I(:,:,1); 
Green = I(:,:,2); 
Blue = I(:,:,3);

B = zeros(size(I,1), size(I,2), 'uint8');
RedImage = cat(3,Red,B,B);
subplot(3,3,2), imshow(RedImage); 

C= zeros(size(I,1), size(I,2), 'uint8');
BlueImage = cat(3,C,C,Blue);
subplot(3,3,3),  imshow(BlueImage);

D= zeros(size(I,1), size(I,2), 'uint8');
greenImage = cat(3,D,Green,D);
subplot(3,3,4), imshow(greenImage);

grayScale = rgb2gray(I);

Ics = imadjust(I, stretchlim(I, [0.05 0.95]), []); 
subplot(3,3,5), imshow(Ics);

Ihist =  histeq(Ics);
figure; 
subplot(2,2,1), imshow(grayScale);
subplot(2,2,2), imshow(Ihist);

Ihsv = rgb2hsv(I); %convert original to hsv image
V = histeq(Ihsv(:, :, 3)); %histogram equalization for (3rd - V) channel
Ihsv(:, :, 3) = V; %Copy equalized  V plane into 3rd channal of Ihsv
Iout = hsv2rgb(Ihsv); %convert Ihsv back to rgb
subplot(2,2,3), imhist(Iout);



