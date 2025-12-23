%closoing - first do the dilation and do the erosion

bw = imread('text.png');  %read a binary image
se = [0 1 0; 1 1 1; 0 1 0]; %define structuring element
%bw_out = imdilate(bw, se);  %dilate the image
%bw_out1 = imerode(bw_out, se);

%insted of that two operation we can use imclose function
bw_out = imclose(bw,se); 

subplot(1,2,1), imshow(bw);  %display original image

subplot(1,2,2), imshow(bw_out); %display dilated image

%to create a structuring element 
se1 = ones(6,1); %one matrix raw, column
se2 = strel('square', 4); %square matrix and the size
se3 = strel('disk', 3); %shape is disk and radius of the structure element

