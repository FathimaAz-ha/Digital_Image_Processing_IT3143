a = imread('onion.png');
acs = imadjust(a, stretchlim(a, [0.05 0.95]),[]);

subplot(1,4,1), imshow(a);
subplot(1,4,2), imshow(acs);
subplot(1,4,3), imhist(a); 
%subplot(1,4,4), imhist(acs);

%for color image histogram equalization cannot b done by directly with
%histeq() 
%you have to change the rgb to hsv and change/ do the histogram equaliztion for the v only and let the h and
%S be default. then change the image to hsv to rgb and display

I = imread('autumn.tif');  %read the image
Ihsv = rgb2hsv(I); %convert original to hsv image
V = histeq(Ihsv(:, :, 3)); %histogram equalization for (3rd - V) channel
Ihsv(:, :, 3) = V; %Copy equalized  V plane into 3rd channal of Ihsv
Iout = hsv2rgb(Ihsv); %convert Ihsv back to rgb
subplot(1,4,1), imshow(I); 
subplot(1,4,2), imshow(Iout); 
subplot(1,4,3), imhist(Iout);
