%1. load and display the images hands1 and hands2
I1 = imread("hands1.jpg");
figure, imshow(I1);

I2 = imread("hands2.jpg"); 
figure, imshow(I2); 


%2 . write a function DifferenceImages that computes the absolute difference
%between two images pixel wise and displays the resultant image 
DifferenceImages(I1,I2);

%3 . compute the absolute difference between hands1 and hands2 using the above
%function 

function diffImg = DifferenceImages(img1, img2)
diffImg = abs(double(img1) - double(img2));  %ensure absolute difference.

figure; 
imshow(diffImg); 
title("Absolute Difference Image")
end

% 4. replace all pixels in hands1 that are brighter than 
% 200 with the corresponding pixel values from hands2 and 
% displayed the modified image
I1(I1 > 200) = I2(I1 > 200); 
figure; imshow(I1); 
title("Modified Image");


for i = size(I1, 1)
    for j = 1 : size(I1, 2)

        if I1(i,j) > 200
            I1(i,j) = I2(i,j); 
        end
    end
end

figure; 
imshow(I1); 
title("Modified Image 2")
%5. EXTRACT THE RED CHANNEL from hands2 and display it. 
Red = I2(:, :, 1); %Red channel exraction 

%displaying extracted red channel
B = zeros(size(I2, 1), size(I2,2), 'uint8'); 
RedImage = cat(3, Red, B,B); 
figure; 
imshow(RedImage); title("Red Channel"); 

%grayscale image 
grey = rgb2gray(I1); 
imshow(grey); title("Grey scale image");