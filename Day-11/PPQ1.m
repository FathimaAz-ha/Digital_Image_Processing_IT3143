%Consider the image cameraman.tif Develop the method to improve the
%contrast of the image

%Read and display the original image
I = imread('cameraman.tif'); 
figure; 
subplot(2,3,1), imshow(I); 

%Adding 100 to each pixels
Iadd = imadd(I, 100); 
subplot(2,3,2), imshow(Iadd); 

%Converting the image to double precision 
Idouble = im2double(I); 

%Applying powerlow transformation
output1 = 3 * (Idouble).^1.5;
output2 = 3 * (Idouble).^2.5; 
output3 = 3 * (Idouble).^3.0; 

figure; 
subplot(2,2,1), imshow(Idouble); 
subplot(2,2,2), imshow(output1); 
subplot(2,2,3), imshow(output2); 
subplot(2,2,4), imshow(output3); 

%Applying exponential tranformation 
output4 = 5 * (1 + 0.1.^Idouble - 1);
output5 = 5 * (1 + 0.2.^Idouble - 1);
output6 = 5 * (1 + 0.3.^Idouble - 1); 

figure; 
subplot(2,2,1), imshow(output1);
subplot(2,2,2), imshow(output2);
subplot(2,2,3), imshow(output3);


