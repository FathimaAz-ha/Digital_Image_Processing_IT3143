bw = imread('text.png');  %read a binary image
se = [0 1 0; 1 1 1; 0 1 0]; %define structuring element
bw_out = imerode(bw, se);  %Erode the image

subplot(1,2,1), imshow(bw);  %display original image
subplot(1,2,2), imshow(bw_out); %display eroded image

