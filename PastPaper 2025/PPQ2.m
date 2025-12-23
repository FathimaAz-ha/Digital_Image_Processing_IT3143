%PPQ2
 
%Read and display the original image
I = imread('yellowlily.jpg');
figure; 
imshow(I); 
title("Original Image"); 


%Convert the image to the HSV color space and do the histogram equalization
Ihsv = rgb2hsv(I); 
histeq(Ihsv(:, :, 3)); 

%copying the equalized value
Ihsv(:, :, 3); 

%Convert the hsv to rgb
Iout = hsv2rgb(Ihsv);

imshow(Iout);
title("Equalized Histo");

%greyscale image
Igrey = rgb2gray(I); 
figure; 
imshow(Igrey); 
title("Gray scale Image"); 

%increase the contrast
Icon = imadjust(I, stretchlim(I, [0.05, 0.95]), []); 
imshow(Icon); 
title("Adjusted Image"); 

%Canny method for grey scale image
Icn = edge(Igrey, "canny"); 
imshow(Icn); 
title("Edge Detected")
